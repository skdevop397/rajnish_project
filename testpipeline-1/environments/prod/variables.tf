variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Production resource group name"
  type        = string
}

variable "storage_account_name" {
  description = "Production storage account name"
  type        = string
}
