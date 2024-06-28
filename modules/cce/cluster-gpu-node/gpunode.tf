resource "opentelekomcloud_cce_node_v3" "gpu_node" {
  cluster_id        = var.cluster_id
  name              = "${var.name}-${var.env}-llm-node"
  flavor_id         = var.gpu_flavor_id
  subnet_id         = var.subnet_id
  key_pair          = var.key_pair
  availability_zone = var.availability_zone

  root_volume {
    size = 40 #hardcode for simplicity
    volumetype = "SSD"
  }

  data_volumes {
    size = 100 #hardcode for simplicity
    volumetype = "SSD"
  }

  billing_mode = "0" # Pay-per-use

  k8s_tags = {
    "gpu" = "true"
  }

  os = var.gpu_node_os

  taints {
    key    = var.gpu_taint_key
    value  = var.gpu_taint_value
    effect = var.gpu_taint_effect
  }
}