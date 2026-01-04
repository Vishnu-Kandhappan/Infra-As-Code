output "azure_vm_ids" {
  value = azurerm_linux_virtual_machine.main[*].id
}

output "azure_private_ips" {
  value = azurerm_network_interface.main[*].ip_configuration[0].private_ip_address
}

output "azure_resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "azure_network_interface_ids" {
  value = azurerm_network_interface.main[*].id
}
