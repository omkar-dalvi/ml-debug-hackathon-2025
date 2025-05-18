# CLOUD CONFIGURATION
variable "tenant_id" {
  default = "5b043196-3310-48fe-b9f9-d40f8e20ec02"
}

variable "subscription_id" {
  default = "63376d3e-0976-49a2-ab0c-530c82ecd920"
}

variable "location" {
  default = "East US"
}

# APP CONFIGURATION
variable "env" {
  type    = string
  default = "dev"
}

variable "app" {
  type    = string
  default = "mldebug"
}