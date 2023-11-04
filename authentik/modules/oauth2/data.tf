
data "authentik_flow" "default-authorization-flow" {
  slug = var.authorization_flow_name
}

data "authentik_flow" "default-authentication-flow" {
  slug = var.authentication_flow_name
}

data "authentik_certificate_key_pair" "signing-key" {
  name = var.signing_key_name
}

data "authentik_scope_mapping" "scopes" {
  managed_list = var.scopes
}
