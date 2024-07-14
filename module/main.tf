resource "google_compute_network" "vpc_network" {
  name                    = var.network
  auto_create_subnetworks = true
  project                 = var.project  # Ensure project is specified
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
