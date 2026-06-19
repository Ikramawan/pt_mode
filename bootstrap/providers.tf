terraform {
  required_version = "~> 1.15.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.77.0"
    }
  }
}

provider "azurerm" {
  features {}

  resource_provider_registrations = "none"
  storage_use_azuread             = true
}