# apis.tf
resource "google_project_service" "services" {
  for_each = toset([
    "container.googleapis.com",
    "cloudbuild.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "compute.googleapis.com",
    "iam.googleapis.com"
  ])
  
  service = each.key
  disable_on_destroy = false
}
