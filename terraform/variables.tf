# General Variables

variable "region" {
  type        = string
  description = "The region to deploy to."
}

variable "location" {
  type        = string
  description = "The location for the Kubernetes cluster instance."
}

variable "project" {
  type        = string
  description = "The name of the project."
}

# Kubernetes Specific Variables

## Cluster Specific

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

## Node Pool Specific

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
