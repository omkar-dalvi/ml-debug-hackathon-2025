terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-backend-rg"
    storage_account_name = "terraformblobstorage2025"
    container_name       = "terraform-backend"
    key                  = "terraform.tfstate"
  }
}