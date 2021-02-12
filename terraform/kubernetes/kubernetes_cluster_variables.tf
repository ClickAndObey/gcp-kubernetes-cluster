# Kubernetes Cluster Variables

variable "cluster_name" {
  type        = string
  description = "The name of the cluster."
}

variable "cluster_cidr_block" {
  type        = string
  description = "CIDR Blocks for the cluster."
}

variable "admin_username" {
  type        = string
  description = "Administrator username."
}

variable "admin_password" {
  type        = string
  description = "Administrator password."
}