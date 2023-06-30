# Azure Open AI Account
resource "azurerm_cognitive_account" "openai_account" {
  name                          = var.name
  location                      = var.location
  resource_group_name           = azurerm_resource_group.openai_rg.name
  kind                          = var.kind
  custom_subdomain_name         = var.custom-subdomain-name
  sku_name                      = var.sku
  public_network_access_enabled = false
  identity {
    type = var.identity
  }

  tags = {
    environment = var.environment
  }
}