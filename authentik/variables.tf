variable "proxy_apps" {
  description = "List of Proxy vapplications to create"
  type = map(map(string))
}

variable "oauth2_apps" {
  description = "List of OAuth2 applications to create"
  type = map(any)
}

variable "service_connection" {
  description = "ID of the desired Outpost integration"
  type = string
}
