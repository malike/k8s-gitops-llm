variable "name" {
  description = "Name of the setup"
  type        = string
}

variable "env" {
  description = "Environment"
  type        = string
}

variable "cluster_id" {
  description = "The flavor ID of the node"
  type        = string
}

variable "flavor_id" {
  description = "The flavor ID of the node"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID"
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

variable "cpu_taint_key" {
  description = "The taint key"
  type        = string
}

variable "cpu_taint_value" {
  description = "The taint value"
  type        = string
}

variable "cpu_taint_effect" {
  description = "The taint effect"
  type        = string
}