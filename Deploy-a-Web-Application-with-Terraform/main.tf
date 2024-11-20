terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "= 2.99"
    }
  }
}

provider "azurerm" {
  features {}

  skip_provider_registration = true
}

resource "azurerm_app_service_plan" "svcplan" {
  name                = "vikarblog-appserviceplan"
  location            = var.location
  resource_group_name = var.rsgname

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "appsvc" {
  name                = "custom-tf-webapp-for-vikars-blog"
  location            = var.location
  resource_group_name = var.rsgname
  app_service_plan_id = azurerm_app_service_plan.svcplan.id


  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }
}