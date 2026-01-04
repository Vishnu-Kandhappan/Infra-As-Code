azure_credentials_file = "C:/path/to/azure-credentials.json"
# azure_subscription_id = "00000000-0000-0000-0000-000000000000"
# azure_client_id = "00000000-0000-0000-0000-000000000000"
# azure_client_secret = "your_client_secret"
# azure_tenant_id = "00000000-0000-0000-0000-000000000000"

resource_group_name = "your_resource_group_name"
location = "East US"
zone = "1"
virtual_network_name = "spot-vnet"
address_space = "10.0.0.0/16"
subnet_name = "spot-subnet"
subnet_address_prefix = "10.0.1.0/24"
vm_name_prefix = "spot-vm"
vm_size = "Standard_D2s_v3"
admin_username = "your_admin_username"
admin_password = "your_admin_password"
spot_instance = true
max_price = -1
vm_count = 1
image_publisher = "Canonical"
image_offer = "UbuntuServer"
image_sku = "18.04-LTS"

tags = {
  Environment = "production"
  Project     = "monitoring-platform"
}
