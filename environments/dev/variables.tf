variable "resource_group_name" {
  description = "Name of the Azure resource group."
  type        = string
}

variable "location" {
  description = "Azure region used for the dev environment."
  type        = string
  default     = "uksouth"
}

variable "tags" {
  description = "Common tags applied to Azure resources."
  type        = map(string)
  default = {
    environment = "dev"
    project     = "azure-platform-lab"
    managed_by  = "terraform"
  }
}