# apis.tf
resource "google_project_service" "services" {
  for_each = toset([
    "container.googleapis.com",  # GKE API
    "cloudbuild.googleapis.com", # Cloud Build API
    "cloudresourcemanager.googleapis.com",
    "compute.googleapis.com", # Compute Engine API
    "iam.googleapis.com"
  ])

  project = var.project_id
  service = each.key

  disable_dependent_services = true
  disable_on_destroy         = false
}
