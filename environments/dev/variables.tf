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

variable "virtual_network_name" {
  description = "Name of the development virtual network."
  type        = string
}

variable "virtual_network_address_space" {
  description = "Address space for the development virtual network."
  type        = list(string)
}

variable "vm_subnet_name" {
  description = "Name of the VM subnet."
  type        = string
}

variable "vm_subnet_address_prefixes" {
  description = "Address prefixes for the VM subnet."
  type        = list(string)
}

variable "vm_network_security_group_name" {
  description = "Name of the VM network security group."
  type        = string
}

variable "admin_source_cidr" {
  description = "Public CIDR allowed to connect to SSH."
  type        = string
}