variable "gcp_credentials" {
  type        = string
  description = "Location of GCP Service account credential File"
}
variable "gcp_project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "gcp_region" {
  default     = "us-central1"
  type        = string
  description = "GCP Region"
}

variable "gcp_cluster_name" {
  type        = string
  description = "Kubenetes Cluster Name"
}

variable "gcp_region_zones" {
  type        = list(string)
  description = "List of Zones for GKE Cluster"
}

variable "gke_network" {
  type        = string
  description = "GKE Network, generally VPC name"
}

variable "gke_subnetwork" {
  type        = string
  description = "GKE Subnetwork, generally the VPC subnet name"
}

variable "gke_node_pool_name" {
  type        = string
  description = "GKE Node pool name"
}

variable "gke_service_account_name" {
  type        = string
  description = "GKE Service account name"
}