# Create a Storage Container for the Core State File
resource "azurerm_storage_container" "core-container" {
  depends_on = [azurerm_storage_account.test-storage]  
  name = "core-container"
  storage_account_name = azurerm_storage_account.test-storage.name
}