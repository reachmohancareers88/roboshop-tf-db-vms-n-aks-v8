env       = "dev"
location  = "Denmark East"
rgname    = "denmark-east-rg"

image_id = "/subscriptions/cde5241e-289a-449b-b2b7-4efcf2d5c83c/resourceGroups/denmark-east-rg/providers/Microsoft.Compute/galleries/Docker/images/DockerDEF/versions/1.0.0"

subnet_id = "/subscriptions/cde5241e-289a-449b-b2b7-4efcf2d5c83c/resourceGroups/denmark-east-rg/providers/Microsoft.Network/virtualNetworks/Workstation-vnet/subnets/aks-subnet"

db = {
  mysql = {
    vm_size = "Standard_B1ms"
  }

  valkey = {}

  mongodb = {
    vm_size = "Standard_B1ms"
  }

  rabbitmq = {}
}
