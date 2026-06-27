variable "resource_group_name" {
  description = "Name of the Azure resource group."
  type        = string
}

variable "location" {
  description = "Azure region used for the dev environment."
  type        = string
  default     = "centralus"
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

variable "virtual_machine_name" {
  description = "Name of the development Linux virtual machine."
  type        = string
}

variable "virtual_machine_computer_name" {
  description = "Host name configured inside the development VM."
  type        = string
}

variable "virtual_machine_size" {
  description = "Azure size for the development VM."
  type        = string
  default     = "Standard_B1s"
}

variable "virtual_machine_admin_username" {
  description = "Administrator username for the development VM."
  type        = string
}

variable "virtual_machine_ssh_public_key_path" {
  description = "Local path to the SSH public key."
  type        = string
}

variable "virtual_machine_network_interface_name" {
  description = "Name of the VM network interface."
  type        = string
}

variable "virtual_machine_public_ip_name" {
  description = "Name of the VM public IP."
  type        = string
}

variable "virtual_machine_os_disk_name" {
  description = "Name of the VM operating-system disk."
  type        = string
}

variable "virtual_machine_data_disk_name" {
  description = "Name of the VM data disk."
  type        = string
}

variable "virtual_machine_data_disk_size_gb" {
  description = "Size of the VM data disk in GB."
  type        = number
  default     = 32
}

variable "aks_subnet_name" {
  description = "Name of the AKS node subnet."
  type        = string
}

variable "aks_subnet_address_prefixes" {
  description = "Address prefixes for the AKS node subnet."
  type        = list(string)
}

variable "container_registry_name" {
  description = "Globally unique Azure Container Registry name."
  type        = string
}

variable "container_registry_sku" {
  description = "Azure Container Registry SKU."
  type        = string
  default     = "Basic"
}

variable "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace."
  type        = string
}

variable "log_analytics_retention_days" {
  description = "Log Analytics retention period in days."
  type        = number
  default     = 30
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster."
  type        = string
}

variable "aks_dns_prefix" {
  description = "DNS prefix for the AKS API server."
  type        = string
}

variable "aks_kubernetes_version" {
  description = "Kubernetes version used by AKS."
  type        = string
  default     = "1.35.5"
}

variable "aks_system_node_vm_size" {
  description = "VM size for the AKS system node pool."
  type        = string
  default     = "Standard_D2s_v3"
}

variable "aks_system_node_min_count" {
  description = "Minimum system node count."
  type        = number
  default     = 1
}

variable "aks_system_node_max_count" {
  description = "Maximum system node count."
  type        = number
  default     = 2
}

variable "aks_user_node_vm_size" {
  description = "VM size for the AKS user node pool."
  type        = string
  default     = "Standard_D2s_v3"
}

variable "aks_user_node_min_count" {
  description = "Minimum user node count."
  type        = number
  default     = 1
}

variable "aks_user_node_max_count" {
  description = "Maximum user node count."
  type        = number
  default     = 2
}

variable "aks_pod_cidr" {
  description = "Pod CIDR for Azure CNI Overlay."
  type        = string
  default     = "10.244.0.0/16"
}

variable "aks_service_cidr" {
  description = "Kubernetes service CIDR."
  type        = string
  default     = "10.0.0.0/16"
}

variable "aks_dns_service_ip" {
  description = "Kubernetes DNS service IP."
  type        = string
  default     = "10.0.0.10"
}