resource "azurerm_resource_group" "az-bot-svc-rg" {
  name     = var.rg-name
  location = "West Europe"

  tags = {
    Environment = "dev",
    Location = "we",
    Purpose = "Azure migrate",
    Application = "Corporate Infrastructure",
    OwnerEmail = "ts@nc.com",
    ContactEmail = "ts@nc.com",
    BusinessFunction = "Corporate Infrastructure",
    Platform = "AzureInfra",
    Name = "AzureInfra",
    CostCenter = "870192",
    ProjectIONumber = "Cloud&Compute",
  }
}