# Creates a service account with a user-defined name.
variable "service_account_name" {
  description = "Name for the service account."
  type        = string
}

# Assigns IAM roles (least privileged) using google_project_iam_member
variable "roles" {
  description = "List of IAM roles to assign to the service account."
  type        = list(string)
  #default     =
}

# Outputs the SA email for reference in other resources.
resource "google_service_account" "sa" {
  account_id   = var.service_account_name
  display_name = "${var.service_account_name} Service Account"
}

resource "google_project_iam_member" "roles" {
  project = google_service_account.sa.project  
  for_each = toset(var.roles)
  role     = each.value
  member   = "serviceAccount:${google_service_account.sa.email}"
}

output "service_account_email" {
  value = google_service_account.sa.email
}
