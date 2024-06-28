output "vpc_id" {
  value = opentelekomcloud_vpc_v1.vpc.id
}

output "subnet_id" {
  value = opentelekomcloud_vpc_subnet_v1.subnet.id
}