variable "location" {
  default     = "UK South"
  description = "Location of the resource group"
}
variable "base_name" {
  default     = "MGBase"
  description = "Base name of the resources"
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