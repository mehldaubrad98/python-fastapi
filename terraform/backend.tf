# backend.tf
terraform {
  backend "gcs" {
    bucket = "bradmeh-tf-state-staging"
    prefix = "terraform/state"
  }
}
