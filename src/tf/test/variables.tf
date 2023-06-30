variable "location" {
  default     = "westeurope"
  description = "Location of the resource group."
}

# environment
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