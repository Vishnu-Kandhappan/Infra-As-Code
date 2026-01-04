variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "azure_credentials_file" {
  description = "Path to a JSON credentials file with Azure service principal details."
  type        = string
  default     = null
}

variable "azure_subscription_id" {
  description = "Azure subscription ID (leave null to use the credentials file or Azure CLI)."
  type        = string
  default     = null
}

variable "azure_client_id" {
  description = "Azure client ID (leave null to use the credentials file or Azure CLI)."
  type        = string
  default     = null
}

variable "azure_client_secret" {
  description = "Azure client secret (leave null to use the credentials file or Azure CLI)."
  type        = string
  default     = null
  sensitive   = true
}

variable "azure_tenant_id" {
  description = "Azure tenant ID (leave null to use the credentials file or Azure CLI)."
  type        = string
  default     = null
}

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "East US"
}

variable "zone" {
  description = "The availability zone for the VM."
  type        = string
  default     = ""
}

variable "virtual_network_name" {
  description = "The name of the virtual network."
  type        = string
  default     = "spot-vnet"
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
  default     = "spot-subnet"
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "vm_name_prefix" {
  description = "Prefix for created VM names."
  type        = string
  default     = "spot-vm"
}

variable "vm_count" {
  description = "The number of VMs to create."
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "The size of the virtual machines."
  type        = string
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "The admin username for the virtual machines."
  type        = string
}

variable "admin_password" {
  description = "The admin password for the virtual machines."
  type        = string
  sensitive   = true
}

variable "spot_instance" {
  description = "Whether to create spot instances."
  type        = bool
  default     = true
}

variable "max_price" {
  description = "The maximum price you are willing to pay for a spot VM (-1 for on-demand price)."
  type        = number
  default     = -1
}

variable "image_publisher" {
  description = "The image publisher."
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "The image offer."
  type        = string
  default     = "UbuntuServer"
}

variable "image_sku" {
  description = "The image SKU."
  type        = string
  default     = "18.04-LTS"
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}
