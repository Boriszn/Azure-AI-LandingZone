# Create Cognitive Service Computer vision
resource "azurerm_cognitive_account" "computer_vision_service" {
  name=var.name
  resource_group_name="${azurerm_resource_group.cognitive-svc-rg.name}"
  location="${azurerm_resource_group.cognitive-svc-rg.location}"
  kind="ComputerVision"
  sku_name  = "F0"

  tags = {
    environment = var.environment
  }
}