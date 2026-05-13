# Resource group module
module "ResourceGroup" {
  source = "./ResourceGroup"
  rg_name     = var.rg_name
  location    = var.location
  environment = var.environment
  department  = var.department
  owner       = var.owner
}

# Key vault module
module "KeyVault" {
  source                  = "./KeyVault"
  for_each                = var.keyvaults
  kv_basename             = each.value.kv_basename
  kv_encryption           = each.value.kv_encryption
  soft_delete_retention   = each.value.soft_delete_retention
  sku_name                = each.value.sku_name
  rg_name                 = var.rg_name
  location                = var.location
  environment             = var.environment
  department              = var.department
  owner                   = var.owner
  depends_on              = [module.ResourceGroup]
}

#Storage account module
module "StorageAccount" {
  source = "./StorageAccount"
  for_each                = var.storageacc
  stg_basename            = each.value.stg_basename
  account_tier            = each.value.account_tier
  replication_type        = each.value.replication_type
  rg_name                 = var.rg_name
  location                = var.location
  environment             = var.environment
  department              = var.department
  owner                   = var.owner
  depends_on              = [module.ResourceGroup]
}

#Azure container app module
module "AzureContainerApp" {
  source = "./AzureContainerApp"
  for_each                = var.containerapp
  loganalytics_name       = each.value.loganalytics_name
  loganalytics_retention  = each.value.loganalytics_retention
  containerenv_name       = each.value.containerenv_name
  containerapp_name       = each.value.containerapp_name
  container_name          = each.value.container_name
  container_image         = each.value.container_image
  ingress_externalenabled = each.value.ingress_externalenabled
  ingress_allowinsecure   = each.value.ingress_allowinsecure
  rg_name                 = var.rg_name
  location                = var.location
  environment             = var.environment
  department              = var.department
  owner                   = var.owner
  depends_on              = [module.ResourceGroup]
}

# RBAC Permissions
data "azurerm_subscription" "current" {
}

data "azuread_client_config" "current" {
}

resource "azuread_group" "Developers" {
  display_name     = "IT Development Team"
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true
}

resource "azurerm_role_assignment" "Developers" {
  scope                = data.azurerm_subscription.current.id
  role_definition_name = "Reader"
  principal_id         = azuread_group.Developers.object_id
}