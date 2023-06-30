# Create an resource group for
resource "azurerm_resource_group" "cognitive-svc-rg" {
  location = var.location
  name     = var.rg-cognitive-svc

  tags = {
    Environment = "dev",
    Location = "we",
    Email = "ts@mail.com",
    Cost = "1234"
  }
}