module "kubernetes" {
  source = "./kubernetes"

  location = var.location

  cluster_name       = var.cluster_name
  cluster_cidr_block = var.cluster_cidr_block
  admin_username     = var.admin_username
  admin_password     = var.admin_password

  node_pool_name        = var.node_pool_name
  cluster_machine_type  = var.cluster_machine_type
  cluster_machine_count = var.cluster_machine_count
}
