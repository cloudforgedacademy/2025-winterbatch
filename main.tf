resource "azurerm_resource_group" "anson3511" {
  name     = "anson3511"
  location = "canadacentral"
}

resource "azurerm_storage_account" "anslem2511" {
  name                     = "anslemstoragedemo123"
  resource_group_name      = azurerm_resource_group.anson3511.name
  location                 = azurerm_resource_group.anson3511.location
  account_tier             = "Standard"
  account_replication_type = "LRS" 
  public_network_access_enabled = var.access 

}

resource "azurerm_data_factory" "ebun2511" {
  name                = "ebun2511"
  location            = azurerm_resource_group.anson3511.location
  resource_group_name = azurerm_resource_group.anson3511.name

  tags = {
    environment = "dev"
    team        = "data"
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
  subscription_id = "3bbbef12-5553-4245-b63a-765d4c79bd1d"
}

resource "azurerm_storage_container" "containers" {
  for_each              = toset(var.container_names)
  name                  = each.value
  storage_account_id    = azurerm_storage_account.anslem2511.id
  container_access_type = "private"
}

