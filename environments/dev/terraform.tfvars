resource_group_name                 = "rg-azure-platform-lab-dev"
location                            = "uksouth"
virtual_network_name                = "vnet-platform-lab-dev"
virtual_network_address_space       = ["10.10.0.0/16"]
vm_subnet_name                      = "snet-vm-dev"
vm_subnet_address_prefixes          = ["10.10.1.0/24"]
vm_network_security_group_name      = "nsg-vm-dev"
admin_source_cidr                   = "151.226.76.119/32"
virtual_machine_name                = "vm-platform-lab-dev"
virtual_machine_computer_name       = "vmlabdev"
virtual_machine_size                = "Standard_D2s_v5"
virtual_machine_admin_username      = "azureadmin"
virtual_machine_ssh_public_key_path = "~/.ssh/azure-platform-lab.pub"

virtual_machine_network_interface_name = "nic-platform-lab-dev"
virtual_machine_public_ip_name         = "pip-platform-lab-dev"

virtual_machine_os_disk_name      = "osdisk-platform-lab-dev"
virtual_machine_data_disk_name    = "datadisk-platform-lab-dev"
virtual_machine_data_disk_size_gb = 32