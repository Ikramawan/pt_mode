variable "name" {
  description = "Globally unique name of the Azure Container Registry."
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9]{5,50}$", var.name))
    error_message = "ACR name must contain 5 to 50 alphanumeric characters."
  }
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region for the container registry."
  type        = string
}

variable "sku" {
  description = "Azure Container Registry SKU."
  type        = string
  default     = "Basic"

  validation {
    condition     = contains(["Basic", "Standard", "Premium"], var.sku)
    error_message = "ACR SKU must be Basic, Standard or Premium."
  }
}

variable "tags" {
  description = "Tags applied to the container registry."
  type        = map(string)
  default     = {}
}