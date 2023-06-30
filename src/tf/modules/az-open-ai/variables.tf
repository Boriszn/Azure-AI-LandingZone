variable "name" {
  type = string
}

variable "rg-name" {
  type = string
}

variable "location" {
    type  = string
}

variable "environment" {
    type  = string
}

variable "kind" {
  type        = string
  default     = "OpenAI"
}

variable "custom-subdomain-name" {
  type        = string
  default     = "ceroaiazurerm"
}

variable "sku" {
  type        = string
  default     = "S0"
}

variable "identity" {
  type        = string
  default     = "SystemAssigned"
}

variable "model-rs-name" {
  type        = string
  default     = "cero_chatgpt_model"
}

variable "model-format" {
  type        = string
  default     = "OpenAI"
}

variable "model-format-name" {
  type        = string
  default     = "gpt-35-turbo"
}

variable "model-version" {
  type        = string
  default     = "0301"
}

variable "model-scale-type" {
  type        = string
  default     = "Standard"
}