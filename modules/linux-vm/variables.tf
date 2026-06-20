variable "name" {
  description = "Name of the Linux virtual machine."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group containing the virtual machine."
  type        = string
}

variable "location" {
  description = "Azure region for the virtual machine resources."
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet used by the network interface."
  type        = string
}

variable "network_interface_name" {
  description = "Name of the virtual machine network interface."
  type        = string
}

variable "public_ip_name" {
  description = "Name of the virtual machine public IP."
  type        = string
}

variable "computer_name" {
  description = "Host name configured inside the virtual machine."
  type        = string
}

variable "admin_username" {
  description = "Linux administrator username."
  type        = string
}

variable "admin_ssh_public_key" {
  description = "SSH public key used for administrator authentication."
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "Azure virtual machine size."
  type        = string
  default     = "Standard_B1s"
}

variable "os_disk_name" {
  description = "Name of the managed operating-system disk."
  type        = string
}

variable "data_disk_name" {
  description = "Name of the managed data disk."
  type        = string
}

variable "data_disk_size_gb" {
  description = "Size of the managed data disk in GB."
  type        = number
  default     = 32

  validation {
    condition     = var.data_disk_size_gb >= 4
    error_message = "The data disk must be at least 4 GB."
  }
}

variable "tags" {
  description = "Tags applied to virtual machine resources."
  type        = map(string)
  default     = {}
}