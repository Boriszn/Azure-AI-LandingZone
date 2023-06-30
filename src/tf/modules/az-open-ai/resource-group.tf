# Resource Group for Cognitive Services
resource "azurerm_resource_group" "openai_rg" {
  name     = var.open-ai-rg
  location = var.location
}