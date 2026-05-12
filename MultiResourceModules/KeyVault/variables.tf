variable "kv_basename" {
  type = string
  description = "The key vault name"
}
variable "rg_name" {
  type = string
  description = "Name of the resource group"
}
variable "location" {
  type = string
  description = "The location of the deployment"
}
variable "environment" {
  type = string
  description = "The environment of the deployment"
}
variable "department" {
  type = string
  description = "The department for the deployment"
}
variable "owner" {
  type = string
  description = "The owner of the deployment"
}
variable "kv_encryption" {
  type = bool
  description = "Key vault encryption"
}
variable "soft_delete_retention" {
  type = number
  description = "Soft delete retention cpnfiguartion"
}
variable "sku_name" {
  type = string
  description = "The sku of the resource"
}
