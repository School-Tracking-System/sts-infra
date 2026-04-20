# Google Kubernetes Engine (GKE) Autopilot Cluster
# Autopilot manages nodes for you and is usually more cost-effective for microservices.
resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region

  # Enable Autopilot
  enable_autopilot = true

  # Release channel setup
  release_channel {
    channel = "REGULAR"
  }

  # For non-production/testing, deletion_protection is false so you can destroy it.
  # Change to true for actual production!
  deletion_protection = false 
}

# Artifact Registry Repository for Docker images
resource "google_artifact_registry_repository" "docker_repo" {
  location      = var.region
  repository_id = var.repository_name
  description   = "Docker repository for School Tracking microservices"
  format        = "DOCKER"
}
