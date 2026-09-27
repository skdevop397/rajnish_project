variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Development resource group name"
  type        = string
}

variable "storage_account_name" {
  description = "Development storage account name"
  type        = string
}
