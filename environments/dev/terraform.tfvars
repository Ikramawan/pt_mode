resource_group_name            = "rg-azure-platform-lab-dev"
location                       = "uksouth"
virtual_network_name           = "vnet-platform-lab-dev"
virtual_network_address_space  = ["10.10.0.0/16"]
vm_subnet_name                 = "snet-vm-dev"
vm_subnet_address_prefixes     = ["10.10.1.0/24"]
vm_network_security_group_name = "nsg-vm-dev"
admin_source_cidr              = "151.226.76.119/32"