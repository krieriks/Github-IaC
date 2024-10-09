terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-backend-001-krieriks"
    storage_account_name = "sabackendkrijcibl691j7"
    container_name       = "sc-backend-001-krieriks"
    key                  = "rg.terraform.sc-backend-001-krieriks"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a3adf20e-4966-4afb-b717-4de1baae6db1"
}