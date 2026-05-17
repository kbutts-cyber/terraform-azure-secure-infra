output "vm_name" {
  value = azurerm_linux_virtual_machine.main.name
}

output "private_ip" {
  value = azurerm_network_interface.main.private_ip_address
}