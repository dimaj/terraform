

resource "authentik_provider_oauth2" "application" {
  name                  = var.application_name
  client_id             = var.client_id == null ? var.application_name : var.client_id
  authorization_flow    = data.authentik_flow.default-authorization-flow.id
  access_code_validity  = var.access_code_validity
  access_token_validity = var.access_token_validity
  authentication_flow = (var.authentication_flow_name == null
    ? null
    : data.authentik_flow.default-authentication-flow.id
  )
  client_type                = var.client_type
  include_claims_in_id_token = var.include_claims_in_id_token
  issuer_mode                = var.issuer_mode
  jwks_sources               = var.jwks_sources
  property_mappings          = data.authentik_scope_mapping.scopes.ids
  redirect_uris              = var.redirect_uris
  refresh_token_validity     = var.refresh_token_validity
  signing_key                = data.authentik_certificate_key_pair.signing-key.id
  sub_mode                   = var.sub_mode
}

resource "authentik_application" "application" {
  name              = var.application_name
  slug              = join("-", split(" ", lower(var.application_name)))
  protocol_provider = authentik_provider_oauth2.application.id
  meta_launch_url   = var.meta_launch_url
  open_in_new_tab   = true
}

