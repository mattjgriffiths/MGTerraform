data "azurerm_client_config" "current" {}

resource "random_string" "random" {
  length = 8
  special = false
  upper = false
}

resource "azurerm_key_vault" "keyvault" {
  name                        = "${lower(var.kv_basename)}kv${random_string.random.result}"
  location                    = var.location
  resource_group_name         = var.rg_name
  enabled_for_disk_encryption = var.kv_encryption
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = var.soft_delete_retention
  purge_protection_enabled    = false
  tags       = {
    Environment   = var.environment
    Department    = var.department
    Owner         = var.owner
  }

  sku_name = var.sku_name

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
}