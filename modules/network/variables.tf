variable "name" {
  description = "Name of the virtual network."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group containing the network."
  type        = string
}

variable "location" {
  description = "Azure region for network resources."
  type        = string
}

variable "address_space" {
  description = "Address space assigned to the virtual network."
  type        = list(string)
}

variable "subnet_name" {
  description = "Name of the VM subnet."
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Address prefixes assigned to the VM subnet."
  type        = list(string)
}

variable "network_security_group_name" {
  description = "Name of the network security group."
  type        = string
}

variable "admin_source_cidr" {
  description = "Public source CIDR allowed to connect to SSH."
  type        = string

  validation {
    condition     = can(cidrhost(var.admin_source_cidr, 0))
    error_message = "admin_source_cidr must be a valid CIDR, such as 203.0.113.10/32."
  }
}

variable "tags" {
  description = "Tags applied to network resources."
  type        = map(string)
  default     = {}
}
variable "aks_subnet_name" {
  description = "Name of the subnet used by AKS node pools."
  type        = string
}

variable "aks_subnet_address_prefixes" {
  description = "Address prefixes assigned to the AKS node subnet."
  type        = list(string)

  validation {
    condition     = length(var.aks_subnet_address_prefixes) > 0
    error_message = "At least one AKS subnet address prefix must be provided."
  }
}