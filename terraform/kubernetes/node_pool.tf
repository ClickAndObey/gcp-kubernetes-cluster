resource "google_container_node_pool" "nodes" {
    name       = var.node_pool_name
    location   = var.location
    cluster    = google_container_cluster.kubernetes_cluster.name
    node_count = var.cluster_machine_count

    node_config {
        preemptible  = false
        machine_type = var.cluster_machine_type

        metadata = {
            disable-legacy-endpoints = "true"
        }

        oauth_scopes = [
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring",
        ]
    }
}