terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.69.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.8.1"
    }
  }
  backend "azurerm" {
    resource_group_name = "tfstateRG01"
    storage_account_name = "tfstate011398985624"
    container_name = "tfstate"
    key = "devterraform.tfstate"
  }
}

provider "azurerm" {
  features{
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}