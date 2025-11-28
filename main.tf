resource "azurerm_resource_group" "anson3511" {
  name     = "anson3511"
  location = "canadacentral"
}

resource "azurerm_data_factory" "ebun2511" {
  name                = "ebun2511"
  location            = azurerm_resource_group.anson3511.location
  resource_group_name = azurerm_resource_group.anson3511.name

  tags = {
    environment = "dev"
     team        = "data"        # ← this is the ONLY change
  }
}

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
  subscription_id = "3bbbfe12-5553-4245-b63a-765d4c79bd1d"
}
