resource "google_container_cluster" "primary" {
  name               = "fastapi-gke-cluster"
  location           = "us-central1-a"
  initial_node_count = 1

  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.private.name

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = false
    master_ipv4_cidr_block  = "172.16.0.0/28"
  }

  node_pool {
    name           = "default-node-pool"
    node_count     = 3
    node_locations = "us-central1-b"

    autoscaling {
      min_node_count = 1
      max_node_count = 5
    }

    management {
      auto_repair  = true
      auto_upgrade = true
    }

    node_config {
      machine_type = "e2-medium"
      disk_size_gb = 100
      oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform"
      ]
    }
  }
}