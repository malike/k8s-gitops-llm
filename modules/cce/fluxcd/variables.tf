variable "name" {
  description = "Name of the setup"
  type        = string
}

variable "env" {
  description = "Environment"
  type        = string
}

variable "flux_repo_url" {
  description = "The Git repository URL for FluxCD"
  type        = string
}

variable "flux_branch" {
  description = "The Git branch to use for FluxCD"
  type        = string
  default     = "uat"
}

variable "flux_ssh_key_path" {
  description = "The path to the SSH key for accessing the Git repository"
  type        = string
}