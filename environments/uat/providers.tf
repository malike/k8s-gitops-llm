terraform {
  required_providers {
    flux = {
      source  = "fluxcd/flux"
      version = ">= 1.2"
    }
    github = {
      source  = "integrations/github"
      version = ">= 6.1"
    }
    kind = {
      source  = "tehcyx/kind"
      version = ">= 0.4"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0"
    }
    opentelekomcloud = {
      source  = "opentelekomcloud/opentelekomcloud"
      version = "1.36.0"
    }
  }
}

provider "opentelekomcloud" {
  user_name   = var.opentelekomcloud_username
  password    = var.opentelekomcloud_password
  domain_name = var.opentelekomcloud_domain
  tenant_name = var.opentelekomcloud_tenant
  auth_url    = "https://iam.eu-de.otc.t-systems.com/v3"
}

provider "flux" {}

provider "github" {
  owner = var.github_org
  token = var.github_token
}