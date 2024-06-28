variable "name" {
  description = "Name of the setup"
  type        = string
}

variable "env" {
  description = "Environment"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "key_pair" {
  description = "The key pair for the nodes"
  type        = string
}

variable "node_os" {
  description = "The flavor ID of the node"
  default     = "EulerOS 2.5"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone"
  type        = string
}


variable "flavor_id" {
  description = "The flavor ID of the cluster nodes"
  type        = string
}
