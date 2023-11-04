variable "application_name" {
  type        = string
  description = "Name of an application to create"
}

variable "mode" {
  type        = string
  default     = "forward_single"
  description = "Mode for this proxy application"
}

variable "proxy_config" {
  type        = map(string)
  description = "Configuration for proxy application/outpost/provider"
}

variable "outpost_integration_id" {
  description = "ID of the Outpost connection"
  type        = string
}
