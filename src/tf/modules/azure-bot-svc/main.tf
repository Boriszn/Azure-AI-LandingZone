terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.00"
    }
  }
}

provider "azurerm" {
  features {}
}