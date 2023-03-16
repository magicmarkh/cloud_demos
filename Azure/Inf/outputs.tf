output "resource_group_name" {
  value = azurerm_resource_group.rg_pineapple.name
}

output "win_conn_public_ip" {
  value = azurerm_windows_virtual_machine.dpa-win-conn01.public_ip_address
}

output "lin_conn_public_ip"{
    value = azurerm_linux_virtual_machine.dpa-ssh-conn01.public_ip_address
}

output "tls_private_key" {
  value     = tls_private_key.new_ssh_key.private_key_pem
  sensitive = true
}

output "dc01_password"{
  value = azurerm_windows_virtual_machine.dc01.admin_password
  sensitive = true
}

output "win_conn_password"{
  value = azurerm_windows_virtual_machine.dpa-win-conn01.admin_password
  sensitive = true
}