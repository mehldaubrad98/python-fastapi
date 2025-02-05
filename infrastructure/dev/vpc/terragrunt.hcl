include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../vpc"  # Adjust the path to your module
}

inputs = {
  region     = local.region
  project_id = local.project_id
  private_subnet_cidr = local.private_subnet_cidr
  public_subnet_cidr  = local.public_subnet_cidr
}