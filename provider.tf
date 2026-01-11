terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}


  subscription_id = "3bbbef12-5553-4245-b63a-765d4c79bd1d"
}