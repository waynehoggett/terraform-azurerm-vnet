variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  nullable    = false
}

variable "location" {
  description = "The region where the resources will be created."
  type        = string
  nullable    = false
}

variable "address_space" {
  description = "The address space that is used by the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_prefix" {
  description = "The address space that is used by the subnet."
  type        = string
  default     = "10.0.0.0/24"
}

variable "environment" {
  description = "The address space that is used by the subnet."
  type        = string
  default     = "development"
}

variable "workload_name" {
  description = "The address space that is used by the subnet."
  type        = string
  nullable    = false
}

variable "instance_number" {
  description = "The unique instance number for this resource. If there are multiple, set to greater than 1."
  type        = string
  default     = "1"
}

variable "destination_port" {
  description = "The inbound TCP port used by the application"
  type        = string
  default     = "443"
}