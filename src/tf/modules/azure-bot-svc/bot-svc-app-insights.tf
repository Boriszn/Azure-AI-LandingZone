resource "azurerm_application_insights" "az-bot-svc-app-insights" {
  name                = "example-appinsights"
  location            = azurerm_resource_group.az-bot-svc-rg.location
  resource_group_name = azurerm_resource_group.az-bot-svc-rg.name
  application_type    = "web"
}

resource "azurerm_application_insights_api_key" "az-bot-svc-app-insights-key" {
  name                    = "example-appinsightsapikey"
  application_insights_id = azurerm_application_insights.az-bot-svc-app-insights.id
  read_permissions        = ["aggregate", "api", "draft", "extendqueries", "search"]
}