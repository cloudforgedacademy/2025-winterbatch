variable "resource_group_name" {
  type = string
  description = "resource_group_name"
  default = "cloud-35-rg"
}

variable "location" {
  type    = string
  default = "canadacentral"
}

variable "key_vault_name" {
  description = "Existing Azure Key Vault name"
  type        = string
}

variable "key_vault_resource_group_name" {
  description = "Resource group name for the existing Azure Key Vault"
  type        = string  
}


variable "db_password" {
  type      = string
  sensitive = true
}

variable "client_secret" {
  description = "Client secret stored securely in Key Vault"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "The Tenant ID for the Azure Active Directory"
  type        = string
}
variable "object_id" {
  description = "The Object ID of the principal to assign access policy"
  type        = string
}
variable "allowed_rdp_ip" {
  description = "The IP address allowed to access RDP"
  type        = string
}