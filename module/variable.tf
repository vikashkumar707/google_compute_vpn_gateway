# REQUIRED VARIABLES
variable "vpc_name" {
  type        = string
  description = "VPC name"
}

variable "subnet_name" {
  type        = string
  description = "Subnet name"
}

# OPTIONAL VARIABLES


variable "auto_create_value" {
  type        = bool
  description = "Auto create subnetworks"
}

variable "mtu" {
  type        = number
  description = "MTU size"
}

variable "routing_mode" {
  type        = string
  description = "Routing mode"
}

variable "description" {
  type        = string
  description = "Description"
}

variable "delete_default_value" {
  type        = bool
  description = "Delete default routes"
}

variable "ip_cidr_range" {
  type        = string
  description = "IP CIDR range"
}


variable "timecreate" {
  type        = string
  description = "Create timeout"
}

variable "timedelete" {
  type        = string
  description = "Delete timeout"
}

variable "timeupdate" {
  type        = string
  description = "Update timeout"
}

variable "aggregation_interval" {
  description = "Aggregation interval"
  type        = string
}

variable "flow_sampling" {
  description = "Flow sampling"
  type        = string
}

variable "metadata" {
  description = "Metadata"
  type        = string
}

variable "ip_cidr_range1" {
  description = "Secondary IP CIDR range"
  type        = string
}

variable "range_name" {
  description = "Secondary IP range name"
  type        = string
}

variable "private_ip_google_access" {
  description = "private_ip_google_access"
  type        = bool
  default     = false
}

variable "private_ipv6_google_access" {
  description = "private_ipv6_google_access"
  type        = bool
  default     = false
}


variable "description" {
  description = "(optional) - An optional description of this resource."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The region this gateway should sit in."
  type        = string
  default     = null
}

variable "timeouts" {
  description = "nested block: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
    }
  ))
  default = []
}
