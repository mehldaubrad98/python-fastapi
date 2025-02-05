# include {
#   path = find_in_parent_folders()
# }

# locals {
#   region     = "us-central1"
#   project_id = "proud-storm-444720-m9"
#   private_subnet_cidr = "10.0.1.0/24"
#   public_subnet_cidr  = "10.0.2.0/24"
#   cluster_name        = "fastapi-gke-cluster"
#   node_count          = 3
#   machine_type        = "e2-medium"
# }

# inputs = {
#   region     = local.region
#   project_id = local.project_id
#   private_subnet_cidr = local.private_subnet_cidr
#   public_subnet_cidr  = local.public_subnet_cidr
#   cluster_name        = local.cluster_name
#   node_count          = local.node_count
#   machine_type        = local.machine_type
# }