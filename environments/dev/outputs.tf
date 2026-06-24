output "resource_group_id" {
  description = "ID of the dev resource group."
  value       = module.resource_group.id
}

output "resource_group_name" {
  description = "Name of the dev resource group."
  value       = module.resource_group.name
}

output "virtual_network_id" {
  description = "ID of the development virtual network."
  value       = module.network.virtual_network_id
}

output "vm_subnet_id" {
  description = "ID of the VM subnet."
  value       = module.network.subnet_id
}

output "vm_network_security_group_id" {
  description = "ID of the VM network security group."
  value       = module.network.network_security_group_id
}

output "virtual_machine_id" {
  description = "ID of the development Linux VM."
  value       = module.linux_vm.virtual_machine_id
}

output "virtual_machine_public_ip" {
  description = "Public IP address of the development Linux VM."
  value       = module.linux_vm.public_ip_address
}

output "virtual_machine_private_ip" {
  description = "Private IP address of the development Linux VM."
  value       = module.linux_vm.private_ip_address
}

output "virtual_machine_managed_identity_principal_id" {
  description = "Principal ID of the VM system-assigned managed identity."
  value       = module.linux_vm.principal_id
}

output "virtual_machine_data_disk_id" {
  description = "ID of the development VM data disk."
  value       = module.linux_vm.data_disk_id
}

output "container_registry_login_server" {
  description = "Login server for the Azure Container Registry."
  value       = module.container_registry.login_server
}

output "log_analytics_workspace_id" {
  description = "ID of the Log Analytics workspace."
  value       = module.monitoring.id
}
