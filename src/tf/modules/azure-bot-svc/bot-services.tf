resource "azurerm_bot_service_azure_bot" "terra-baseline-azurebot" {
  name                = var.name
  resource_group_name = azurerm_resource_group.az-bot-svc-rg.name
  location            = "global"
  microsoft_app_id    = data.azurerm_client_config.current.client_id
  sku                 = "F0"

  endpoint                              = "https://example.com"
  developer_app_insights_api_key        = azurerm_application_insights_api_key.az-bot-svc-app-insights-key.api_key
  developer_app_insights_application_id = azurerm_application_insights.az-bot-svc-app-insights.app_id

  tags = {
    environment = "test"
  }
}