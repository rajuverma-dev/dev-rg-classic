terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
  backend "azurerm" {
  resourec_group_name = "rg-veer"
  storage_account_name = "veerstorage"
  container_name = "veercontainer"
  key           = "classic.tfstate"
}

}

provider "azurerm" {
  features {}
  subscription_id = " 289da116-5358-4835-8897-9e1db2cde3d2 "
}