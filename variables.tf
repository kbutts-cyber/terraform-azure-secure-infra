variable "location" {
  default = "Central US"
}

variable "resource_group_name" {
  default = "rg-kb-secure-infra"
}

variable "admin_username" {
  default = "azure_user"
}

variable "ssh_public_key_path" {
  default = "~/.ssh/kb-azure-vm.pub"
}

variable "allowed_ssh_ip" {
  sensitive = true
}