terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_mysql_server" "example" {
  name                = "tflab-mysqlserver-1-app01"
  location            = var.location
  resource_group_name = var.rsgname

  sku_name = "B_Gen5_2"
  # capacity = "2"
  # tier = "Basic"
  # family = "Gen4"
        
  storage_mb = "5120"
  version = "8.0"
  backup_retention_days = "7"
  ssl_enforcement_enabled = true
  infrastructure_encryption_enabled = false
  auto_grow_enabled = true
  public_network_access_enabled = true 

  administrator_login          = "mysqladminun"
  administrator_login_password = "easytologin4once!"
}

resource "azurerm_mysql_database" "example" {
  name                = "appdb01"
  resource_group_name = var.rsgname
  server_name         = azurerm_mysql_server.example.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}