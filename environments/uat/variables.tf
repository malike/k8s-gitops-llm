# COMMON
variable "name" {
  description = "Name of Deployment"
  default     = "k8s-gitops"
  type        = string
}

variable "env" {
  description = "Environment Name"
  default     = "uat"
  type        = string
}

#NETWORK SPECIFIC
variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "vpc_gateway" {
  description = "VPC Gateway"
  type        = string
}


#CLUSTER SPECIFIC
variable "container_network_type" {
  description = "Container Network Type"
  default     = "overlay_l2"
  type        = string
}

variable "cluster_type" {
  description = "The type of the cluster"
  default     = "VirtualMachine"
  type        = string
}

variable "flavor_id" {
  description = "The flavor ID of the cluster nodes"
  default     = "s2.medium.2"
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


# CPU NODE SPECIFIC
variable "cpu_taint_key" {
  description = "Key for the taint"
  type        = string
  default     = "cpu"
}

variable "cpu_taint_value" {
  description = "Value for the taint"
  type        = string
  default     = "true"
}

variable "cpu_taint_effect" {
  description = "Effect for the taint"
  type        = string
  default     = "NoSchedule"
}

# GPU NODE SPECIFIC
variable "gpu_node_os" {
  description = "Key for the taint"
  type        = string
  default = ""
}

variable "gpu_flavor_id" {
  description = "Key for the taint"
  type        = string
  default = ""
}

variable "gpu_taint_key" {
  description = "Key for the taint"
  type        = string
  default     = "gpu"
}

variable "gpu_taint_value" {
  description = "Value for the taint"
  type        = string
  default     = "true"
}

variable "gpu_taint_effect" {
  description = "Effect for the taint"
  type        = string
  default     = "NoSchedule"
}

#FLUXCD Specific
variable "github_repository" {
  description = "Effect for the taint"
  type        = string
  default     = "malike"
}

variable "flux_ssh_key_path" {
  description = "Effect for the taint"
  type        = string
}


#OTC
variable "opentelekomcloud_username" {
  description = "Authentication details"
  type        = string
}

variable "opentelekomcloud_password" {
  description = "Authentication details"
  type        = string
}

variable "opentelekomcloud_domain" {
  description = "Authentication details"
  type        = string
}

variable "opentelekomcloud_tenant" {
  description = "Authentication details"
  type        = string
}
