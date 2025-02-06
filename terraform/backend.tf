# backend.tf
terraform {
  backend "gcs" {
    bucket = "bradmeh-tf-state-staging-terraform-state"
    prefix = "terraform/state"
  }
}
