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
  vpc_name                = var.vpc_name
  auto_create_value       = var.auto_create_value
  mtu                     = var.mtu
  description             = var.description
  routing_mode            = var.routing_mode
  delete_default_value    = var.delete_default_value

  subnet_name             = var.subnet_name
  ip_cidr_range           = var.ip_cidr_range
  region                  = var.region
  aggregation_interval    = var.aggregation_interval
  flow_sampling           = var.flow_sampling
  metadata                = var.metadata
  ip_cidr_range1          = var.ip_cidr_range1
  range_name              = var.range_name
  private_ip_google_access = var.private_ip_google_access
  private_ipv6_google_access = var.private_ipv6_google_access

  timeouts = [{
    create = null
    delete = null
  }]
}
