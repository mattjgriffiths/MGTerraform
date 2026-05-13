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

# Storage account resource map object
storageacc = {
    devstg1 = {
        stg_basename = "Devstg001"
        account_tier = "Standard"
        replication_type = "GRS"
    }
    devstg2 = {
        stg_basename = "Devstg002"
        account_tier = "Standard"
        replication_type = "GRS"
    }
    devstg3 = {
        stg_basename = "Devstg003"
        account_tier = "Standard"
        replication_type = "GRS"
    }
}

# Azure container app resource map object
containerapp = {
    devcontainer1 = {
        loganalytics_name = "dev-loganalytics001"
        loganalytics_retention = "30"
        containerenv_name = "dev-acappenv001"
        containerapp_name = "dev-acapp001"
        container_name = "dev-container001"
        container_image = "mcr.microsoft.com/k8se/quickstart:latest"
    }
    devcontainer2 = {
        loganalytics_name = "dev-loganalytics002"
        loganalytics_retention = "30"
        containerenv_name = "dev-acappenv002"
        containerapp_name = "dev-acapp002"
        container_name = "dev-container002"
        container_image = "mcr.microsoft.com/k8se/quickstart:latest"
    }
    prdcontainer3 = {
        loganalytics_name = "dev-loganalytics003"
        loganalytics_retention = "90"
        containerenv_name = "dev-acappenv003"
        containerapp_name = "dev-acapp003"
        container_name = "dev-container003"
        container_image = "mcr.microsoft.com/k8se/quickstart:latest"
    }
}