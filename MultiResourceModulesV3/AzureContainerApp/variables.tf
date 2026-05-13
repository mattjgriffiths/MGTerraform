variable "loganalytics_name" {
  type = string
  description = "The log analytics workspace name"
}
variable "loganalytics_retention" {
  type = number
  description = "The log analytics workspace name"
}
variable "containerenv_name" {
  type = string
  description = "The Container Environment name"
}
variable "containerapp_name" {
  type = string
  description = "The Container App name"
}
variable "container_name" {
  type = string
  description = "The name of the container"
}
variable "container_image" {
  type = string
  description = "The image used for the container deployment"
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