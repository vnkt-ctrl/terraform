provider "azurerm" {
  features {}
  use_cli = true
  subscription_id = "042585e9-b0bd-4142-a59a-daf927c8360e"
}

resource "azurerm_resource_group" "existing" {
  name     = "sample"
  location= "east us"
}

resource "azurerm_storage_account" "example" {
  name                     = "tftest6983"
  resource_group_name      = resource.azurerm_resource_group.existing.name
  location                 = resource.azurerm_resource_group.existing.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
