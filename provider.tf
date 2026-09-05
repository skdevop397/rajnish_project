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
 location = azurerm_resource_group.rg.location
 address_space = ["10.0.0.0/16"]
}
resource "azurerm_subnet" "snet" {
  name = "snet1"
  virtual_network_name = "azurerm_virtual_network.vnet.name"
  resource_group_name = "azurerm_resource_group.rg.name"
  address_prefixes = ["10.0.1.0/24"]
  
}