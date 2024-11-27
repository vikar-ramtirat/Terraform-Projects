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
  name                     = var.stgacname
  resource_group_name      = var.rsgname
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "lab" {
  name                  = "blobcontainer4lab"
  storage_account_id  = azurerm_storage_account.lab.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "lab" {
  name                   = "TerraformBlob"
  storage_account_name   = azurerm_storage_account.lab.name
  storage_container_name = azurerm_storage_container.lab.name
  type                   = "Block"
}
resource "azurerm_storage_share" "lab" {
  name                 = "terraformshare"  
  storage_account_id = azurerm_storage_account.lab.name
  quota                = 50
}