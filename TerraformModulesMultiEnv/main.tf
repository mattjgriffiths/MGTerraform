module "ResourceGroup" {
  source = "./ResourceGroup"
  base_name = var.base_name
  location = var.location
  environment = var.environment
  department = var.department
  owner = var.owner
}

module "StorageAccount" {
  source = "./StorageAccount"
  base_name = var.base_name
  resource_group_name =  module.ResourceGroup.rg_name_out
  location = var.location
  environment = var.environment
  department = var.department
  owner = var.owner
}

module "KeyVault" {
  source = "./KeyVault"
  base_name = var.base_name
  resource_group_name =  module.ResourceGroup.rg_name_out
  location = var.location
  environment = var.environment
  department = var.department
  owner = var.owner
}