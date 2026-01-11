# data "azurerm_key_vault" "existing_kv" {
#   name                = var.key_vault_name
#   resource_group_name = var.key_vault_resource_group_name
# }

# data "azurerm_key_vault_secret" "admin_username" {
#   name         = "admin-username"
#   key_vault_id = data.azurerm_key_vault.existing_kv.id
# }

# data "azurerm_key_vault_secret" "admin_password" {
#   name         = "admin-password"
#   key_vault_id = data.azurerm_key_vault.existing_kv.id
# }


data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"

  soft_delete_retention_days = 7
  purge_protection_enabled   = false
}
