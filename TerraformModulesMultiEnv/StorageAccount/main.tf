resource "random_string" "random" {
  length = 8
  special = false
  upper = false
}

resource "azurerm_storage_account" "storageaccount" {
  name                     = "${lower(var.base_name)}stgacc${random_string.random.result}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags       = {
    Environment   = var.environment
    Department    = var.department
    Owner         = var.owner
  }
}