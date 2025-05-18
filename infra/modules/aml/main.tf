resource "azurerm_application_insights" "amlapplicationinsights" {
  name                = "${var.app}${var.env}amlai"
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = "web"
}

resource "azurerm_key_vault" "amlkeyvault" {
  name                = "${var.app}${var.env}amlkv"
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"
}

resource "azurerm_storage_account" "amlstorageaccount" {
  name                     = "${var.app}${var.env}amlsa"
  location                 = var.location
  resource_group_name      = var.resource_group_name
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_machine_learning_workspace" "aml" {
  name                    = "${var.app}${var.env}aml"
  location                = var.location
  resource_group_name     = var.resource_group_name
  application_insights_id = azurerm_application_insights.amlapplicationinsights.id
  key_vault_id            = azurerm_key_vault.amlkeyvault.id
  storage_account_id      = azurerm_storage_account.amlstorageaccount.id

  identity {
    type = "SystemAssigned"
  }
}
