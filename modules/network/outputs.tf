output "virtual_network_id" {
  description = "ID of the virtual network."
  value       = azurerm_virtual_network.this.id
}

output "virtual_network_name" {
  description = "Name of the virtual network."
  value       = azurerm_virtual_network.this.name
}

output "subnet_id" {
  description = "ID of the VM subnet."
  value       = azurerm_subnet.vm.id
}

output "network_security_group_id" {
  description = "ID of the VM network security group."
  value       = azurerm_network_security_group.vm.id
}

output "aks_subnet_id" {
  description = "ID of the subnet used by AKS node pools."
  value       = azurerm_subnet.aks.id
}