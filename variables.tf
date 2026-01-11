variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "allowed_rdp_ip" {
  type = string
}

variable "admin_username" {
  type      = string
  sensitive = true
}

variable "admin_password" {
  type      = string
  sensitive = true
}

variable "key_vault_name" {
  type = string
}
