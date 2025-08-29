resource "azurerm_resource_group" "sama1" {
  name     = "rg_sama"
  location = "eastus"
}

resource "azurerm_storage_account" "storage_sama" {
  name                     = "storagesama"
  resource_group_name      = azurerm_resource_group.sama1.name
  location                 = azurerm_resource_group.sama1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "name" {
  name                  = "samacontainer420"
  storage_account_id    = azurerm_storage_account.storage_sama.id
  container_access_type = "private"
}