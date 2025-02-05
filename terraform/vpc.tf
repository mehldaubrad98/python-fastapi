# VPC Configuration
resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

# Private Subnet
resource "google_compute_subnetwork" "private" {
  name                     = "private-subnet"
  ip_cidr_range            = var.private_subnet_cidr
  network                  = google_compute_network.vpc.id
  region                   = var.region
  private_ip_google_access = true
}

# Public Subnet
resource "google_compute_subnetwork" "public" {
  name          = "public-subnet"
  ip_cidr_range = var.public_subnet_cidr
  network       = google_compute_network.vpc.id
  region        = var.region
}
