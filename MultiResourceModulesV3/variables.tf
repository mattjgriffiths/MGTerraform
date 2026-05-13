variable "location" {
  default     = "UK South"
  description = "Location of the resource group"
}
variable "rg_name" {
  default     = "RG01"
  description = "The name of the resource group"
}
variable "environment" {
  default     = "Test"
  description = "Environment the resource will be deployed to Tag"
}
variable "department" {
  default     = "IT"
  description = "Department Tag"
}
variable "owner" {
  default     = "Matt Griffiths"
  description = "Owener of the resource Tag"
}


variable "keyvaults" {
  type = map(object({
    kv_basename           = string
    kv_encryption         = bool
    soft_delete_retention = number
    sku_name              = string
  }))
}

variable "storageacc" {
  type = map(object({
    stg_basename              = string
    account_tier              = string
    replication_type          = string
  }))
}

variable "containerapp" {
  type = map(object({
    loganalytics_name         = string
    loganalytics_retention    = number
    containerenv_name         = string
    containerapp_name         = string
    container_name            = string
    container_image           = string
  }))
}