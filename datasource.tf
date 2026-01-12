data "azurerm_key_vault" "kv" {
  name                = "cloudx-keyvault3511"
  resource_group_name = "cloudx-rg3511"
}

data "azurerm_key_vault_secret" "admin_username" {
  name         = "admin-username"
  key_vault_id = data.azurerm_key_vault.kv.id
}

data "azurerm_key_vault_secret" "admin_password" {
  name         = "admin-password"
  key_vault_id = data.azurerm_key_vault.kv.id
}
