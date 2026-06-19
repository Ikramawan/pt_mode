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