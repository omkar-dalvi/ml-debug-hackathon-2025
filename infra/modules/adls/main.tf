resource "azurerm_storage_account" "adls" {
  name                     = "${var.app}${var.env}adls" 
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  is_hns_enabled = true  
}

resource "azurerm_storage_container" "example" {
  name                  = "data"
  storage_account_id    = azurerm_storage_account.adls.id
  container_access_type = "private"
}