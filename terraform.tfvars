name = "vpngateway"
project = "ceq-devops-sandbox"
region = "europe-west1"
vpc_name                = "testing-vpc-gke"
auto_create_value       = "false"
mtu                     = 1460
description             = "testing"
routing_mode            = "REGIONAL"
subnet_name             = "testing-subnet-gke"
ip_cidr_range           = "10.0.0.0/24" 

timecreate              = "5m"   
timedelete              = "5m"   
timeupdate              = "5m"  
delete_default_value    = true
ip_cidr_range1          = "10.0.1.0/24"
range_name              = "pods-range"
private_ip_google_access = false
private_ipv6_google_access = false


aggregation_interval = "INTERVAL_10_MIN"
flow_sampling        = "0.5"
metadata             = "INCLUDE_ALL_METADATA"
