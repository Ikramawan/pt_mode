variable "name" {
  description = "Name of the AKS cluster."
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix used by the AKS API server."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group containing the AKS cluster."
  type        = string
}

variable "location" {
  description = "Azure region for the AKS cluster."
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version used by the AKS cluster."
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet used by AKS node pools."
  type        = string
}

variable "container_registry_id" {
  description = "ID of the Azure Container Registry."
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "ID of the Log Analytics workspace."
  type        = string
}

variable "system_node_vm_size" {
  description = "VM size used by the system node pool."
  type        = string
  default     = "Standard_D2s_v3"
}

variable "system_node_min_count" {
  description = "Minimum number of nodes in the system node pool."
  type        = number
  default     = 1
}

variable "system_node_max_count" {
  description = "Maximum number of nodes in the system node pool."
  type        = number
  default     = 2
}

variable "user_node_vm_size" {
  description = "VM size used by the user node pool."
  type        = string
  default     = "Standard_D2s_v3"
}

variable "user_node_min_count" {
  description = "Minimum number of nodes in the user node pool."
  type        = number
  default     = 1
}

variable "user_node_max_count" {
  description = "Maximum number of nodes in the user node pool."
  type        = number
  default     = 2
}

variable "pod_cidr" {
  description = "CIDR used for pods in the Azure CNI Overlay network."
  type        = string
  default     = "10.244.0.0/16"
}

variable "service_cidr" {
  description = "CIDR used for Kubernetes services."
  type        = string
  default     = "10.0.0.0/16"
}

variable "dns_service_ip" {
  description = "IP address used by the Kubernetes DNS service."
  type        = string
  default     = "10.0.0.10"
}

variable "tags" {
  description = "Tags applied to AKS resources."
  type        = map(string)
  default     = {}
}