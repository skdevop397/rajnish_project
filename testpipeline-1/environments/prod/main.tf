module "resource_group" {
  source = "../../modules/resource_group"

  name     = var.resource_group_name
  location = var.location

  tags = {
    Environment = "prod"
    ManagedBy   = "Terraform"
  }
}

module "storage_account" {
  source = "../../modules/storage_account"

  name                = var.storage_account_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location

  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = "prod"
    ManagedBy   = "Terraform"
  }
}
