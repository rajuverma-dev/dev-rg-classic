terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
 backend "azurerm" {
    storage_account_name = "veerbackendstorage"
    container_name = "veercontainer"
    key = "veerkey-state.tf"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "661ea49e-05d4-429e-8204-de0d46c539b5"
}
