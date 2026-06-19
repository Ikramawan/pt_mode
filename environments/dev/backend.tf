terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state-uksouth"
    storage_account_name = "sttfstate29d6a985f7"
    container_name       = "tfstate"
    key                  = "environments/dev/terraform.tfstate"
    use_azuread_auth     = true
  }
}