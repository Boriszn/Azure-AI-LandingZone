output "resource-group-name" {
  value = azurerm_resource_group.cognitive-svc-rg.name
}

output "computer-vision-endpoint" {
    value = azurerm_cognitive_account.computer_vision_service.id
}