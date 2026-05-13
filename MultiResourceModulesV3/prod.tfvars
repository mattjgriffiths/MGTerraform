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

# Storage account resource map object
storageacc = {
    prdstg1 = {
        stg_basename = "Prodstg001"
        account_tier = "Standard"
        replication_type = "GRS"
    }
    prdstg2 = {
        stg_basename = "Prodstg002"
        account_tier = "Standard"
        replication_type = "GRS"
    }
    prdstg3 = {
        stg_basename = "Prodstg003"
        account_tier = "Standard"
        replication_type = "LRS"
    }
}

# Azure container app resource map object
containerapp = {
    prdcontainer1 = {
        loganalytics_name = "prod-loganalytics001"
        loganalytics_retention = "30"
        containerenv_name = "prod-acappenv001"
        containerapp_name = "prod-acapp001"
        container_name = "prod-container001"
        container_image = "mcr.microsoft.com/k8se/quickstart:latest"
        ingress_externalenabled = true
        ingress_allowinsecure = false
    }
    prdcontainer2 = {
        loganalytics_name = "prod-loganalytics002"
        loganalytics_retention = "30"
        containerenv_name = "prod-acappenv002"
        containerapp_name = "prod-acapp002"
        container_name = "prod-container002"
        container_image = "mcr.microsoft.com/k8se/quickstart:latest"
        ingress_externalenabled = true
        ingress_allowinsecure = false
    }
    prdcontainer3 = {
        loganalytics_name = "prod-loganalytics003"
        loganalytics_retention = "90"
        containerenv_name = "prod-acappenv003"
        containerapp_name = "prod-acapp003"
        container_name = "prod-container003"
        container_image = "mcr.microsoft.com/k8se/quickstart:latest"
        ingress_externalenabled = true
        ingress_allowinsecure = false
    }
}