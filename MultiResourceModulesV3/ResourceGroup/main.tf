resource "azurerm_resource_group" "resourcegroup" {
  name     = var.rg_name
  location = var.location
  tags       = {
    Environment   = var.environment
    Department    = var.department
    Owner         = var.owner
  }
}