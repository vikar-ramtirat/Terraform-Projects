terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.93.0"
    }
    azuread = {
      source = "hashicorp/azuread"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
resource "azurerm_storage_account" "lab" {
  name                     = "vikarterraformstorage01"
  resource_group_name      = var.rsgname
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Terraform Storage"
    CreatedBy   = "Admin"
  }
}