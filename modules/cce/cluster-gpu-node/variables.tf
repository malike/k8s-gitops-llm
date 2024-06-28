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


variable "gpu_flavor_id" {
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

variable "availability_zone" {
  description = "The availability zone"
  type        = string
}

variable "gpu_node_os" {
  description = "The flavor ID of the node"
  default     = "EulerOS 2.5"
  type        = string
}


variable "gpu_taint_key" {
  description = "The taint key"
  type        = string
}

variable "gpu_taint_value" {
  description = "The taint value"
  type        = string
}

variable "gpu_taint_effect" {
  description = "The taint effect"
  type        = string
}