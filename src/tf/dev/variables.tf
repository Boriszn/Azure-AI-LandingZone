variable "location" {
  default     = "westeurope"
  description = "Location of the resource group."
}

variable "environment" {
  type      = string
  default   = "dev"
}

variable "name-alias" {
  type        = string
  default     = "test"
}

variable "test-storage-rg" {
  type        = string
  default     = "test-storage-rg"
}

variable "cognitive-service-name" {
  type        = string
  default     = "computer_vision_service"
}

variable "az-storage-account-name" {
  type        = string
  default     = "azplaholdertest5"
}

variable "rg-cognitive-svc" {
  type        = string
  default     = "azplaholdertest5"
}

variable "rg-base-bot" {
  type        = string
  default     = "azplaholdertest5"
}

variable "az-bot-svc-name" {
  type        = string
  default     = "base-bot-template"
}

# Open AI

variable "open-ai-name" {
  type        = string
  default     = "openai-test"
}

variable "open-ai-rg" {
  type        = string
  default     = "cerocool-ai-rg"
}

variable "open-ai-locaion" {
  type        = string
  default     = "eastus"
}

variable "open-ai-acount-kind" {
  type        = string
  default     = "OpenAI"
}

variable "open-ai-custom-subdomain-name" {
  type        = string
  default     = "ceroaiazurerm"
}

variable "open-ai-sku" {
  type        = string
  default     = "S0"
}

variable "open-api-identity" {
  type        = string
  default     = "SystemAssigned"
}

variable "chatgpt-model-rs-name" {
  type        = string
  default     = "cero_chatgpt_model"
}

variable "chatgpt-model-format" {
  type        = string
  default     = "OpenAI"
}

variable "chatgpt-model-format-name" {
  type        = string
  default     = "gpt-35-turbo"
}

variable "chatgpt-model-version" {
  type        = string
  default     = "0301"
}

variable "chatgpt-model-scale-type" {
  type        = string
  default     = "Standard"
}