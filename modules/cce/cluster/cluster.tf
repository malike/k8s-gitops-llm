resource opentelekomcloud_cce_cluster_v3 cce_cluster {
  name                    = "${var.name}-${var.env}-cluster"
  cluster_type            = var.cluster_type
  flavor_id               = var.flavor_id
  vpc_id                  = var.vpc_id
  subnet_id               = var.subnet_id
  cluster_version         = var.k8s_version
  container_network_type  = var.container_network_type
  kubernetes_svc_ip_range = var.kubernetes_svc_ip_range
}

// add otc cce addons below if needed.. for now leve empty
//NOTE: we could also add metrics addon here
