resource "google_compute_network" "vpc_network" {
  name                    = var.network
  auto_create_subnetworks = true
}

resource "google_compute_firewall" "default" {
  name    = "default-allow-internal"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }

  source_ranges = ["10.0.0.0/8"]
}

resource "google_compute_vpn_gateway" "this" {
  # description - (optional) is a type of string
  description = var.description
  # name - (required) is a type of string
  name = var.name
  # network - (required) is a type of string
  network = var.network
  # project - (optional) is a type of string
  project = var.project
  # region - (optional) is a type of string
  region = var.region

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      # create - (optional) is a type of string
      create = timeouts.value["create"]
      # delete - (optional) is a type of string
      delete = timeouts.value["delete"]
    }
  }

}
