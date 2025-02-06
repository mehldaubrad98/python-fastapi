# outputs.tf
output "enabled_apis" {
  value       = [for api in google_project_service.required_apis : api.service]
  description = "List of enabled APIs"
}

output "cloudbuild_service_account" {
  value       = "${data.google_project.project.number}@cloudbuild.gserviceaccount.com"
  description = "Cloud Build Service Account"
}
