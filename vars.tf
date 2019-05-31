variable "environment" {
  description = "The name of environment."
  type        = "string"
}

variable "ip_cidr_range" {
  description = "The range of internal addresses that are owned by this DEFAULT subnetwork."
  type        = "string"
}

variable "name" {
  description = "The name of network."
  type        = "string"
  default     = "default"
}
