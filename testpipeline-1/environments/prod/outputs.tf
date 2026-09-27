output "resource_group_name" {
  description = "Production resource group"
  value       = module.resource_group.name
}

output "resource_group_id" {
  description = "Production resource group ID"
  value       = module.resource_group.id
}

output "storage_account_name" {
  description = "Production storage account"
  value       = module.storage_account.name
}

output "storage_account_id" {
  description = "Production storage account ID"
  value       = module.storage_account.id
}

output "storage_blob_endpoint" {
  description = "Production storage blob endpoint"
  value       = module.storage_account.primary_blob_endpoint
}
