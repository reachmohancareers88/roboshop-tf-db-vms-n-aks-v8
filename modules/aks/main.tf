resource "azurerm_kubernetes_cluster" "example" {
  name                = "roboshop-${var.env}"
  location            = var.rg_location
  resource_group_name = var.rg_name
  dns_prefix          = "roboshop-${var.env}"
  kubernetes_version = "1.35.4"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2s_v3"
  }

  identity {
    type = "SystemAssigned"
  }

  bootstrap_profile {
    container_registry_id = "/subscriptions/3f2e42e1-ca06-4a99-8c56-be8d8ba306db/resourceGroups/denmark-east-rg/providers/Microsoft.ContainerRegistry/registries/raghudevopsb89"
  }
}


