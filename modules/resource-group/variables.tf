variable "name" {
  description = "Name of the Azure resource group."
  type        = string

  validation {
    condition     = length(trimspace(var.name)) > 0
    error_message = "Resource group name cannot be empty."
  }
}

variable "location" {
  description = "Azure region where the resource group will be created."
  type        = string
}

variable "tags" {
  description = "Tags applied to the resource group."
  type        = map(string)
  default     = {}
}