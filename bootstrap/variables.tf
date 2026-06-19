variable "location" {
  description = "Azure region for Terraform state resources."
  type        = string
  default     = "uksouth"
}

variable "resource_group_name" {
  description = "Resource group containing Terraform state resources."
  type        = string
}

variable "storage_account_name" {
  description = "Globally unique storage account name for Terraform state."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "Storage account name must contain 3-24 lowercase letters or numbers."
  }
}

variable "container_name" {
  description = "Blob container used for Terraform state."
  type        = string
  default     = "tfstate"
}

variable "tags" {
  description = "Tags applied to the state infrastructure."
  type        = map(string)
  default = {
    environment = "shared"
    project     = "azure-platform-lab"
    managed_by  = "terraform"
    purpose     = "terraform-state"
  }
}