resource "azurerm_resource_group" "resourcegroup" {
  name     = "${var.base_name}RG"
  location = var.location
  tags       = {
    Environment   = var.environment
    Department    = var.department
    Owner         = var.owner
  }
}