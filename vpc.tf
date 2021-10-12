variable "project_id" {
  description = "project_id"
}

variable "region" {
  description = "region"
}

provider "google" {
  project = ver.project_id
  region  = var.region
}

# VPC
resource "google_compute_network" "vpc" {
  name                   = sensitive("${var.project_id}-vpc")
  auto_create_subnetwork = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = sensitive("${var.project_id}-subnet")
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}
