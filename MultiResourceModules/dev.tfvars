location            = "UK West"
rg_name	            = "DevRG01"

#Tags
environment         = "Development"
department          = "IT"
owner               = "Zachary Griffiths"

# Keyvault resource map object
keyvaults = {
    devvault1 = {
        kv_basename = "DevKV001"
        kv_encryption = true
        soft_delete_retention = "7"
        sku_name = "standard"
    }
    devvault2 = {
        kv_basename = "DevKV002"
        kv_encryption = true
        soft_delete_retention = "7"
        sku_name = "standard"
    }
    devvault3 = {
        kv_basename = "DevKV003"
        kv_encryption = true
        soft_delete_retention = "30"
        sku_name = "standard"
    }
}