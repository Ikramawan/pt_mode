resource_group_name                 = "rg-azure-platform-lab-dev"
location                            = "centralus"
virtual_network_name                = "vnet-platform-lab-dev"
virtual_network_address_space       = ["10.10.0.0/16"]
vm_subnet_name                      = "snet-vm-dev"
vm_subnet_address_prefixes          = ["10.10.1.0/24"]
vm_network_security_group_name      = "nsg-vm-dev"
admin_source_cidr                   = "151.226.76.119/32"
virtual_machine_name                = "vm-platform-lab-dev"
virtual_machine_computer_name       = "vmlabdev"
virtual_machine_size                = "Standard_D2s_v3"
virtual_machine_admin_username      = "azureadmin"
virtual_machine_ssh_public_key_path = "~/.ssh/azure-platform-lab.pub"

virtual_machine_network_interface_name = "nic-platform-lab-dev"
virtual_machine_public_ip_name         = "pip-platform-lab-dev"

virtual_machine_os_disk_name      = "osdisk-platform-lab-dev"
virtual_machine_data_disk_name    = "datadisk-platform-lab-dev"
virtual_machine_data_disk_size_gb = 32
aks_subnet_name                   = "snet-aks-dev"
aks_subnet_address_prefixes       = ["10.10.2.0/24"]

container_registry_name      = "acrikramplatformlabdev"
container_registry_sku       = "Basic"
log_analytics_workspace_name = "log-aks-platform-lab-dev"
log_analytics_retention_days = 30
aks_cluster_name             = "aks-platform-lab-dev"
aks_dns_prefix               = "aks-platform-lab-dev"
aks_kubernetes_version       = "1.35.5"

aks_system_node_vm_size   = "Standard_D2s_v3"
aks_system_node_min_count = 1
aks_system_node_max_count = 2

aks_user_node_vm_size   = "Standard_D2s_v3"
aks_user_node_min_count = 1
aks_user_node_max_count = 2

aks_pod_cidr       = "10.244.0.0/16"
aks_service_cidr   = "10.0.0.0/16"
aks_dns_service_ip = "10.0.0.10"