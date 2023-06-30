# Azure Open AI Model - Chat GPT
resource "azurerm_cognitive_deployment" "chatgpt_model_azurerm" {
  name                 = var.model-rs-name
  cognitive_account_id = resource.azurerm_cognitive_account.openai_account.id
  model {
    format  = var.model-format
    name    = var.model-format-name
    version = var.model-version
  }

  scale {
    type = var.model-scale-type
  }
}