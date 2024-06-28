resource "opentelekomcloud_vpc_v1" "vpc" {
  cidr = var.vpc_cidr
  name = "${var.name}-${var.env}-vpc"
}

resource "opentelekomcloud_vpc_subnet_v1" "subnet" {
  name       = "${var.name}-${var.env}-subnet"
  vpc_id     = opentelekomcloud_vpc_v1.vpc.id
  cidr       = var.vpc_cidr
  gateway_ip = var.vpc_gateway
}