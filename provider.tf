terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.45.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.7.1"
    }
  }
}

provider "google" {
  credentials = file(var.gcp_credentials)
  project     = var.gcp_project_id
  region      = var.gcp_region
}

provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}

provider "helm" {
  kubernetes {
    host = "https://${module.gke.endpoint}"
    token                  = data.google_client_config.default.access_token
    cluster_ca_certificate = base64decode(module.gke.ca_certificate)
  }
}