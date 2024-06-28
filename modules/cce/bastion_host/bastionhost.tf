resource "opentelekomcloud_compute_instance_v2" "bastion" {
  name              = "${var.name}-${var.env}-bastion-host"
  image_name        = var.node_os
  flavor_id         = var.flavor_id
  key_pair          = var.key_pair
  availability_zone = var.availability_zone

  network {
    uuid           = var.subnet_id
    access_network = true
  }

  block_device {
    volume_size = 40 #hardcode for simplicity
    destination_type = "volume"
    source_type      = "image"
  }

}
