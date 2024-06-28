variable "name" {
  description = "Name of the setup"
  type        = string
}

variable "env" {
  description = "Environment"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "vpc_gateway" {
  description = "VPC Gateway"
  type        = string
}
