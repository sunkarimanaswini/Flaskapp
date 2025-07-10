resource "azurerm_resource_group" "example"{
    name = var.resource_group_name
    location = var.resource_group_location
} 

resource "azurerm_container_registry" "acr"{
    name = var.container_registry_name
    resource_group_name = azurerm_resource_group.example.name
    location = azurerm_resource_group.example.location
    sku = "Basic"
    admin_enabled = "true"
}
resource "azurerm_kubernetes_cluster" "example" {
  name                = var.cluster_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

resource "azurerm_role_assignment" "example" {
  principal_id                     = azurerm_kubernetes_cluster.example.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.acr.id
  skip_service_principal_aad_check = true
}