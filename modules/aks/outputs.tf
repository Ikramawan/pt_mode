output "id" {
  description = "ID of the AKS cluster."
  value       = azurerm_kubernetes_cluster.this.id
}

output "name" {
  description = "Name of the AKS cluster."
  value       = azurerm_kubernetes_cluster.this.name
}

output "kubelet_identity_object_id" {
  description = "Object ID of the AKS kubelet managed identity."
  value       = azurerm_kubernetes_cluster.this.kubelet_identity[0].object_id
}

output "oidc_issuer_url" {
  description = "OIDC issuer URL used by AKS Workload Identity."
  value       = azurerm_kubernetes_cluster.this.oidc_issuer_url
}

output "user_node_pool_id" {
  description = "ID of the user node pool."
  value       = azurerm_kubernetes_cluster_node_pool.user.id
}

output "control_plane_identity_id" {
  description = "ID of the user-assigned identity used by the AKS control plane."
  value       = azurerm_user_assigned_identity.control_plane.id
}

output "control_plane_identity_principal_id" {
  description = "Principal ID of the AKS control-plane identity."
  value       = azurerm_user_assigned_identity.control_plane.principal_id
}