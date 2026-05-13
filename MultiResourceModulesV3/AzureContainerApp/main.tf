resource "azurerm_log_analytics_workspace" "law" {
  name                = var.loganalytics_name
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = "PerGB2018"
  retention_in_days   = var.loganalytics_retention
  tags       = {
    Environment   = var.environment
    Department    = var.department
    Owner         = var.owner
  }
}

resource "azurerm_container_app_environment" "acaenv" {
  name                       = var.containerenv_name
  location                   = var.location
  resource_group_name        = var.rg_name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.law.id
  tags       = {
    Environment   = var.environment
    Department    = var.department
    Owner         = var.owner
  }
}

resource "azurerm_container_app" "aca" {
  name                         = var.containerapp_name
  container_app_environment_id = azurerm_container_app_environment.acaenv.id
  resource_group_name          = var.rg_name
  revision_mode                = "Single"
  tags       = {
    Environment   = var.environment
    Department    = var.department
    Owner         = var.owner
  }

  template {
    container {
      name   = var.container_name
      image  = var.container_image
      #image  = "mcr.microsoft.com/k8se/quickstart:latest"
      cpu    = 0.25
      memory = "0.5Gi"
    }
  }

 ingress {
    external_enabled           = var.ingress_externalenabled
    allow_insecure_connections = var.ingress_allowinsecure 
    target_port                = 80
    traffic_weight {
      revision_suffix = "1"
      label           = "green"
      percentage      = 100
    }
  }
}
