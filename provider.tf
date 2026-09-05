terraform{
    required_providers {
      azurerm={
      source = "hashicorp/azurerm"
      version = "5.3.0"
      }
    }
}
provider "azurerm" {
  features {
    
  }
}
resource "azurerm_resource_group" "rg" {
  name = "raj"
  location = "centralindia"
}
resource "azurerm_virtual_network" "vnet"{
  name = "vnet01"
 resource_group_name = azurerm_resource_group.rg.name
 requ
 address_spaces = ["1.0.0.0/24"]

}