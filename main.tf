module "google_compute_vpn_gateway" {
  source =  "./module"

   # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = var.name
  # network - (required) is a type of string
  network = var.network
  # project - (optional) is a type of string
  project = var.project
  # region - (optional) is a type of string
  region = var.region


  timeouts = [{
    create = null
    delete = null
  }]
}
