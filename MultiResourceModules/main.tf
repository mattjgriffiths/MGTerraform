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