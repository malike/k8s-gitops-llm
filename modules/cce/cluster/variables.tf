variable "name" {
  description = "Name of Deployment"
  type        = string
}

variable "env" {
  description = "Environment Name"
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

variable "container_network_type" {
  description = "Container Network Type"
  default     = "overlay_l2"
  type        = string
}

variable "cluster_type" {
  description = "The type of the cluster"
  type        = string
}

variable "flavor_id" {
  description = "The flavor ID of the cluster nodes"
  type        = string
}

variable "k8s_version" {
  description = "The version of Kubernetes"
  default     = "v1.27"
  type        = string
}

variable "kubernetes_svc_ip_range" {
  description = "kubernetes_svc_ip_range"
  type        = string
}
