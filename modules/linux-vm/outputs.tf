output "virtual_machine_id" {
  description = "ID of the Linux virtual machine."
  value       = azurerm_linux_virtual_machine.this.id
}

output "virtual_machine_name" {
  description = "Name of the Linux virtual machine."
  value       = azurerm_linux_virtual_machine.this.name
}

output "principal_id" {
  description = "Principal ID of the system-assigned managed identity."
  value       = azurerm_linux_virtual_machine.this.identity[0].principal_id
}

output "network_interface_id" {
  description = "ID of the virtual machine network interface."
  value       = azurerm_network_interface.this.id
}

output "private_ip_address" {
  description = "Private IP address assigned to the virtual machine."
  value       = azurerm_network_interface.this.private_ip_address
}

output "public_ip_address" {
  description = "Public IP address assigned to the virtual machine."
  value       = azurerm_public_ip.this.ip_address
}

output "data_disk_id" {
  description = "ID of the managed data disk."
  value       = azurerm_managed_disk.data.id
}