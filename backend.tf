terraform {
  backend "gcs" {
    bucket  = "terraform-backend-sasank-2022"
    prefix  = "terraform/state"
  }
}
