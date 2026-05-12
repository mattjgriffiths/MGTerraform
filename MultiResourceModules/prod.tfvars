location            = "UK South"
rg_name	            = "ProdRG01"

# Tags
environment         = "Production"
department          = "Finance"
owner               = "Mason Griffiths"

# Keyvault resource map object
keyvaults = {
    prdvault1 = {
        kv_basename = "ProdKV001"
        kv_encryption = true
        soft_delete_retention = "7"
        sku_name = "standard"
    }
    prdvault2 = {
        kv_basename = "ProdKV002"
        kv_encryption = true
        soft_delete_retention = "7"
        sku_name = "standard"
    }
    prdvault3 = {
        kv_basename = "ProdKV003"
        kv_encryption = true
        soft_delete_retention = "30"
        sku_name = "standard"
    }
}