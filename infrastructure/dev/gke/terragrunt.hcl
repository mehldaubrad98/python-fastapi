include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../gke"
}

inputs = {
  region       = local.region
  project_id   = local.project_id
  cluster_name = local.cluster_name
  node_count   = local.node_count
  machine_type = local.machine_type
}