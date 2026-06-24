module "resource_group" {
  source = "../../modules/resource-group"

  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "network" {
  source = "../../modules/network"

  name                        = var.virtual_network_name
  resource_group_name         = module.resource_group.name
  location                    = module.resource_group.location
  address_space               = var.virtual_network_address_space
  subnet_name                 = var.vm_subnet_name
  subnet_address_prefixes     = var.vm_subnet_address_prefixes
  network_security_group_name = var.vm_network_security_group_name
  admin_source_cidr           = var.admin_source_cidr
  tags                        = var.tags
  aks_subnet_name             = var.aks_subnet_name
  aks_subnet_address_prefixes = var.aks_subnet_address_prefixes
}

module "linux_vm" {
  source = "../../modules/linux-vm"

  name                = var.virtual_machine_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  subnet_id           = module.network.subnet_id

  network_interface_name = var.virtual_machine_network_interface_name
  public_ip_name         = var.virtual_machine_public_ip_name

  computer_name        = var.virtual_machine_computer_name
  admin_username       = var.virtual_machine_admin_username
  admin_ssh_public_key = file(pathexpand(var.virtual_machine_ssh_public_key_path))
  vm_size              = var.virtual_machine_size

  os_disk_name      = var.virtual_machine_os_disk_name
  data_disk_name    = var.virtual_machine_data_disk_name
  data_disk_size_gb = var.virtual_machine_data_disk_size_gb

  tags = var.tags
}

module "container_registry" {
  source = "../../modules/container-registry"

  name                = var.container_registry_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  sku                 = var.container_registry_sku
  tags                = var.tags
}

module "monitoring" {
  source = "../../modules/monitoring"

  name                = var.log_analytics_workspace_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  retention_in_days   = var.log_analytics_retention_days
  tags                = var.tags
} 