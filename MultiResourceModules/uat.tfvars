location            = "UK West"
rg_name	            = "UATRG01"

# Tags
environment         = "UAT"
department          = "IT"
owner               = "Zoe Griffiths"

# Keyvault resource map object
keyvaults = {
    uatvault1 = {
        kv_basename = "UATKV001"
        kv_encryption = true
        soft_delete_retention = "7"
        sku_name = "standard"
    }
    uatvault2 = {
        kv_basename = "UATKV002"
        kv_encryption = true
        soft_delete_retention = "7"
        sku_name = "standard"
    }
    uatvault3 = {
        kv_basename = "UATKV003"
        kv_encryption = true
        soft_delete_retention = "30"
        sku_name = "standard"
    }
}