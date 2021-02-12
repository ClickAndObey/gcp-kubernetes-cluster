resource "google_container_cluster" "kubernetes_cluster" {
    name     = var.cluster_name
    location = var.location

    remove_default_node_pool = true
    initial_node_count       = 1
    cluster_ipv4_cidr        = var.cluster_cidr_block

    master_auth {
        username = var.admin_username
        password = var.admin_password

        client_certificate_config {
            issue_client_certificate = true
        }
    }
}
