resource "azurerm_kubernetes_cluster" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version

  sku_tier = "Free"

  oidc_issuer_enabled       = true
  workload_identity_enabled = true

  depends_on = [
    azurerm_role_assignment.network_contributor
  ]

  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.control_plane.id]
  }

  default_node_pool {
    name                 = "system"
    vm_size              = var.system_node_vm_size
    vnet_subnet_id       = var.subnet_id
    auto_scaling_enabled = true
    min_count            = var.system_node_min_count
    max_count            = var.system_node_max_count
    os_disk_size_gb      = 64
    type                 = "VirtualMachineScaleSets"

    only_critical_addons_enabled = true

    upgrade_settings {
      max_surge = "33%"
    }

    node_labels = {
      workload = "system"
    }

    tags = var.tags
  }

  network_profile {
    network_plugin      = "azure"
    network_plugin_mode = "overlay"
    network_policy      = "azure"

    pod_cidr       = var.pod_cidr
    service_cidr   = var.service_cidr
    dns_service_ip = var.dns_service_ip

    load_balancer_sku = "standard"
    outbound_type     = "loadBalancer"
  }

  oms_agent {
    log_analytics_workspace_id = var.log_analytics_workspace_id
  }

  role_based_access_control_enabled = true

  tags = var.tags
}

resource "azurerm_kubernetes_cluster_node_pool" "user" {
  name                  = "user"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.this.id
  vm_size               = var.user_node_vm_size
  vnet_subnet_id        = var.subnet_id
  mode                  = "User"

  auto_scaling_enabled = true
  min_count            = var.user_node_min_count
  max_count            = var.user_node_max_count
  os_disk_size_gb      = 64

  node_labels = {
    workload = "application"
  }

  upgrade_settings {
    max_surge = "33%"
  }

  tags = var.tags
}

resource "azurerm_role_assignment" "acr_pull" {
  scope                = var.container_registry_id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.this.kubelet_identity[0].object_id

  skip_service_principal_aad_check = true
}

resource "azurerm_user_assigned_identity" "control_plane" {
  name                = "${var.name}-control-plane"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

resource "azurerm_role_assignment" "network_contributor" {
  scope                = var.subnet_id
  role_definition_name = "Network Contributor"
  principal_id         = azurerm_user_assigned_identity.control_plane.principal_id
}