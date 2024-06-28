resource "opentelekomcloud_cce_node_v3" "cpu_node" {
  cluster_id        = var.cluster_id
  name              = "${var.name}-${var.env}-cpu-node"
  flavor_id         = var.flavor_id
  subnet_id         = var.subnet_id
  key_pair          = var.key_pair
  availability_zone = var.availability_zone

  root_volume {
    size = 40 #hardcode for simplicity
    volumetype = "SATA"
  }

  data_volumes {
    size = 100 #hardcode for simplicity
    volumetype = "SATA"
  }
  billing_mode = "0" #hardcode for simplicity
  os = var.node_os

  taints {
    key    = var.cpu_taint_key
    value  = var.cpu_taint_value
    effect = var.cpu_taint_effect
  }
}