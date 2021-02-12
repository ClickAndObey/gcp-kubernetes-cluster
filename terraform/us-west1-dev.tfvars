# General Variables

region   = "us-west1"
location = "us-west1-a"
project  = "hello-world"

# Kubernetes Cluster Variables

## Cluster Specific

cluster_name       = "kubernetes-cluster01"
cluster_cidr_block = "10.0.0.0/16"
admin_username     = "admin"
admin_password     = "sixteencharacteradminpassword"

## Node Pool

cluster_machine_type  = "n1-standard-1"
cluster_machine_count = 1
node_pool_name        = "node-pool-01"
