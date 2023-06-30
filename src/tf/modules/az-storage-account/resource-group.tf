# Create a Resource Group for the Terraform State File
resource "azurerm_resource_group" "test-storage-rg" {
  name = var.test-storage-rg
  location = var.location
  
  lifecycle {
    prevent_destroy = true
  }
  
  tags = {
    Environment = var.environment,
    Application = "AI App",
  }
}