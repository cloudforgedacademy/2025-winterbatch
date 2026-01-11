data "azurerm_key_vault" "existing_kv" {
  name                = var.key_vault_name
  resource_group_name = var.key_vault_resource_group_name
}


data "azurerm_key_vault_secret" "admin_username" {
  name         = "admin-username"
  key_vault_id = data.azurerm_key_vault.existing_kv.id
}

data "azurerm_key_vault_secret" "admin_password" {
  name         = "admin-password"
  key_vault_id = data.azurerm_key_vault.existing_kv.id
}