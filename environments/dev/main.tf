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
}