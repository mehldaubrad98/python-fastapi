# remote_state {
#   backend = "gcs"
#   config = {
#     bucket = "tf-state-${get_gcp_account_id()}"
#     prefix = "${path_relative_to_include()}"
#   }
# }

# generate "provider" {
#   path = "provider.tf"
#   if_exists = "overwrite"
#   contents = <<EOF
# provider "google" {
#   project = "${local.project_id}"
#   region  = "${local.region}"
# }
# EOF
# }