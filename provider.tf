terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=4.36.0"
    }
  }
 backend "azurerm" {
    resource_group_name = "Veer-RG"
    storage_account_name = "storageveerbackend"
    container_name = "veercontainer"
    key = "github-key-state.tf"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "317171c4-8a0b-428f-b95a-d30f5ecb1162"
}
