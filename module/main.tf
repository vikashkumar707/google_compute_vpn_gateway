resource "google_compute_network" "vpc_network" {
  project                 = var.project
  name                    = var.vpc_name
  auto_create_subnetworks = var.auto_create_value
  mtu                     = var.mtu
  description             = var.description
  routing_mode            = var.routing_mode
  delete_default_routes_on_create = var.delete_default_value

timeouts {
    create = var.timecreate   
    delete = var.timedelete  
    update = var.timeupdate   
  }
}

resource "google_compute_subnetwork" "custom_subnet" {
  project       = var.project
  name          = var.subnet_name
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = google_compute_network.vpc_network.name
  private_ip_google_access     = var.private_ip_google_access
  private_ipv6_google_access   = var.private_ipv6_google_access

  secondary_ip_range {
    range_name    = var.range_name
    ip_cidr_range = var.ip_cidr_range1
  }

  log_config {
    aggregation_interval = var.aggregation_interval
    flow_sampling        = var.flow_sampling
    metadata             = var.metadata
  }
}

resource "google_compute_vpn_gateway" "this" {
  # description - (optional) is a type of string
  description = var.description
  # name - (required) is a type of string
  name = var.name
  # network - (required) is a type of string
  network = var.vpc_name
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
