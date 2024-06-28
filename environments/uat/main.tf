# configure network
module "network" {
  source      = "../../modules/cce/network"
  name        = var.name
  env         = var.env
  vpc_cidr    = var.vpc_cidr
  vpc_gateway = var.vpc_gateway
}

# #configure cluster
module "cluster" {
  source                  = "../../modules/cce/cluster"
  name                    = var.name
  env                     = var.env
  vpc_id                  = module.network.vpc_id
  subnet_id               = module.network.subnet_id
  cluster_type            = var.cluster_type
  flavor_id               = var.flavor_id
  k8s_version             = var.k8s_version
  container_network_type  = var.container_network_type
  kubernetes_svc_ip_range = var.kubernetes_svc_ip_range
}

# configure cpu node
module "cpu" {
  source            = "../../modules/cce/cluster-cpu-node"
  name              = var.name
  env               = var.env
  cluster_id        = module.cluster.cluster_id
  flavor_id         = var.flavor_id
  subnet_id         = module.network.subnet_id
  key_pair          = var.key_pair
  node_os           = var.node_os
  availability_zone = var.availability_zone
  cpu_taint_key     = var.cpu_taint_key
  cpu_taint_value   = var.cpu_taint_value
  cpu_taint_effect  = var.cpu_taint_effect
}

# configure gpu node
module "gpu" {
  source            = "../../modules/cce/cluster-gpu-node"
  name              = var.name
  env               = var.env
  cluster_id        = module.cluster.cluster_id
  gpu_flavor_id     = var.flavor_id
  subnet_id         = module.network.subnet_id
  key_pair          = var.key_pair
  gpu_node_os       = var.node_os
  availability_zone = var.availability_zone
  gpu_taint_key     = var.gpu_taint_key
  gpu_taint_value   = var.gpu_taint_value
  gpu_taint_effect  = var.gpu_taint_effect
}

# setup fluxcd for continuous deployment and development
module "fluxcd" {
  source            = "../../modules/cce/fluxcd"
  flux_repo_url     = var.github_repository
  flux_branch       = "uat" #assumes there is a branch called uat
  flux_ssh_key_path = var.flux_ssh_key_path
}
#
# //if we need to stage persistent storage for monitoring & observability stack
# // add below
