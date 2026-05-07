variable "base_name" {
  type = string
  description = "The storage account base name"
}
variable "resource_group_name" {
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