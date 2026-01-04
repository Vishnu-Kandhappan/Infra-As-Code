locals {
  azure_credentials = (
    var.azure_credentials_file != null && var.azure_credentials_file != ""
  ) ? jsondecode(file(var.azure_credentials_file)) : {}

  azure_client_id = (
    var.azure_client_id != null && var.azure_client_id != ""
  ) ? var.azure_client_id : try(local.azure_credentials.client_id, null)

  azure_client_secret = (
    var.azure_client_secret != null && var.azure_client_secret != ""
  ) ? var.azure_client_secret : try(local.azure_credentials.client_secret, null)

  azure_subscription_id = (
    var.azure_subscription_id != null && var.azure_subscription_id != ""
  ) ? var.azure_subscription_id : try(local.azure_credentials.subscription_id, null)

  azure_tenant_id = (
    var.azure_tenant_id != null && var.azure_tenant_id != ""
  ) ? var.azure_tenant_id : try(local.azure_credentials.tenant_id, null)
}

provider "azurerm" {
  features {}
  client_id       = local.azure_client_id
  client_secret   = local.azure_client_secret
  subscription_id = local.azure_subscription_id
  tenant_id       = local.azure_tenant_id
}
