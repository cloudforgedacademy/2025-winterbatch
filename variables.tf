variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "key_vault_name" {
  description = "Existing Azure Key Vault name (name only, not URL)"
  type        = string
}

variable "key_vault_resource_group_name" {
  description = "Resource group name where the Key Vault exists"
  type        = string
}

variable "allowed_rdp_ip" {
  description = "CIDR allowed to access RDP (example: 1.2.3.4/32)"
  type        = string
}
