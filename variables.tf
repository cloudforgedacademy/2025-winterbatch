variable "access" {
  description = "Allow public network access to the storage account"
  type        = bool
  default     = true
}

variable "container_names" {
  description = "List of storage containers to create"
  type        = list(string)
  default     = ["logs", "reports", "backup"]
}
