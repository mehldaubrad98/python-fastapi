# Auto-generates a bucket name by combining a user-defined prefix and a random suffix.
variable "bucket_prefix" {
  description = "Prefix for bucket name."
  type        = string
}

resource "random_id" "random_suffix" {
  byte_length = 4
}

resource "google_storage_bucket" "bucket" {
  name          = "${var.bucket_prefix}-${random_id.random_suffix.hex}"
  location      = "us-central1"
  storage_class = "STANDARD"

  # Prevents accidental deletion with lifecycle rules.
  lifecycle {
    prevent_destroy = true
  }

  labels = {
    environment = var.bucket_prefix
    created_by  = "terraform"
  }
}

# Outputs the generated bucket name.
output "bucket_name" {
  value = google_storage_bucket.bucket.name
}
