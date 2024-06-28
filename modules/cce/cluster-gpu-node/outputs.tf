output "gpu_node_ids" {
  value = opentelekomcloud_cce_node_v3.gpu_node.*.id
}