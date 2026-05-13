resource "random_string" "random" {
  length = 8
  special = false
  upper = false
}

resource "azurerm_storage_account" "storageaccount" {
  name                     = "${lower(var.stg_basename)}${random_string.random.result}"
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.replication_type
  tags       = {
    Environment   = var.environment
    Department    = var.department
    Owner         = var.owner
  }
}