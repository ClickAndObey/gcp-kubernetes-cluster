# Node Pool Variables

variable "cluster_machine_type" {
  type        = string
  description = "The machine type for the cluster."
}

variable "cluster_machine_count" {
  type        = string
  description = "The amount of machines to use in the cluster."
}

variable "node_pool_name" {
  type        = string
  description = "The node pool name."
}
