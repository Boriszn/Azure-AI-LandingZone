terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.00"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

# Generate a random storage name
resource "random_string" "tf-name" {
  length = 8
  upper = false
  numeric = true
  lower = true
  special = false
}

module "az-cognitive-svc" {
    source = "../modules/azure-cognitive-svc"
    name = var.cognitive-service-name
    location = var.location 
    rg-cognitive-svc = var.rg-cognitive-svc
    environment = var.environment
}

module "az-bot-svc" {
    source = "../modules/azure-bot-svc"
    name = "${var.az-bot-svc-name}${random_string.tf-name.result}"
    rg-name = "rg-base-bot-template"
}

module "az-storage-account" {
    source = "../modules/az-storage-account"
    name = var.az-storage-account-name
    location = var.location
    environment = var.environment
}