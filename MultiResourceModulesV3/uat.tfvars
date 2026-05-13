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

# Storage account resource map object
storageacc = {
    uatstg1 = {
        stg_basename = "UATstg001"
        account_tier = "Standard"
        replication_type = "GRS"
    }
    uatstg2 = {
        stg_basename = "UATstg002"
        account_tier = "Standard"
        replication_type = "GRS"
    }
    uatstg3 = {
        stg_basename = "UATstg003"
        account_tier = "Standard"
        replication_type = "GRS"
    }
}

# Azure container app resource map object
containerapp = {
    uatcontainer1 = {
        loganalytics_name = "uat-loganalytics001"
        loganalytics_retention = "30"
        containerenv_name = "uat-acappenv001"
        containerapp_name = "uat-acapp001"
        container_name = "uat-container001"
        container_image = "mcr.microsoft.com/k8se/quickstart:latest"
    }
    uatcontainer2 = {
        loganalytics_name = "uat-loganalytics002"
        loganalytics_retention = "30"
        containerenv_name = "uat-acappenv002"
        containerapp_name = "uat-acapp002"
        container_name = "uat-container002"
        container_image = "mcr.microsoft.com/k8se/quickstart:latest"
    }
    uatcontainer3 = {
        loganalytics_name = "uat-loganalytics003"
        loganalytics_retention = "90"
        containerenv_name = "uat-acappenv003"
        containerapp_name = "uat-acapp003"
        container_name = "uat-container003"
        container_image = "mcr.microsoft.com/k8se/quickstart:latest"
    }
}