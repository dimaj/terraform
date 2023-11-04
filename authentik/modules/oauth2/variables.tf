variable "application_name" {
  type        = string
  description = "Name of an application to create"
}

variable "client_id" {
  type        = string
  default     = null
  description = "Client ID to use for this application"
}

variable "access_code_validity" {
  type        = string
  description = "Duration of access code validity"
  default     = "minutes=1"
}

variable "access_token_validity" {
  description = "Duration of access token validity"
  type        = string
  default     = "minutes=10"
}

variable "authentication_flow_name" {
  type        = string
  description = "Name of an authentication flow to use"
  default     = null
}

variable "authorization_flow_name" {
  type        = string
  description = "Name of the authorization flow to use"
  default     = "default-provider-authorization-implicit-consent"
}

variable "client_type" {
  type        = string
  description = "Type of a client: [confidential, public]"
  default     = "confidential"
}

variable "include_claims_in_id_token" {
  type        = bool
  default     = true
  description = "Whether or not claims should be included in token"
}

variable "issuer_mode" {
  type        = string
  default     = "per_provider"
  description = "Configure how the issuer field of the ID Token should be filled. [per_provider, global]"
}

variable "jwks_sources" {
  type        = list(string)
  default     = []
  description = "JWTs signed by certificates configured in the selected sources can be used to authenticate to this provider."
}

variable "redirect_uris" {
  type = list(string)
}

variable "refresh_token_validity" {
  type        = string
  description = "Duration of the refresh token validity"
  default     = "days=30"
}

variable "signing_key_name" {
  type        = string
  description = "Name of the signing key / certificate"
}

variable "sub_mode" {
  type        = string
  default     = "hashed_user_id"
  description = "Subjet mode. [ hashed_user_id, user_id, user_uuid, user_username, user_email, user_upn]"
}

variable "meta_launch_url" {
  type    = string
  default = null
}

variable "scopes" {
  description = "Scopes to use for this OAuth app"
  type        = list(string)
}