provider "google" {

  version = "3.5.0"
  access_token = var.access_token
  project = "tokyo-nomad-323506"
  region  = "us-central1"
  zone    = "us-central1-c"
  
}

resource "google_compute_network" "vpc_network" {

  name = "terraform-network"
}

resource "google_compute_subnetwork" "public-subnetwork" {

  name          = "terraform-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.name
  }
