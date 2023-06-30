# Create a Storage Account
resource "azurerm_storage_account" "test-storage" {
  depends_on = [azurerm_resource_group.test-storage-rg]
  name = var.name
  resource_group_name = azurerm_resource_group.test-storage-rg.name
  location = azurerm_resource_group.test-storage-rg.location
  account_kind = "StorageV2"
  account_tier = "Standard"
  access_tier = "Hot"
  account_replication_type = "ZRS"
  enable_https_traffic_only = true
   
  lifecycle {
    prevent_destroy = true
  }
  tags = {
    environment = var.environment
  }
}