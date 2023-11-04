# Create a proxy provider
resource "authentik_provider_proxy" "application" {
  name                   = local.app_name
  external_host          = lookup(var.proxy_config, "host", null)
  mode                   = lookup(var.proxy_config, "mode", "forward_single")
  authorization_flow     = data.authentik_flow.default-authorization-flow.id
  access_token_validity  = lookup(var.proxy_config, "access_token_validity", "hours=24")
  refresh_token_validity = lookup(var.proxy_config, "refresh_token_validity", null)
  skip_path_regex        = lookup(var.proxy_config, "skip_path_regex", null)
  cookie_domain          = lookup(var.proxy_config, "cookie_domain", null)
  authentication_flow = (lookup(var.proxy_config, "authn_flow", null) == null
    ? null
    : data.authentik_flow.default-authentication-flow.id
  )
}

resource "authentik_application" "application" {
  name              = local.app_name
  slug              = join("-", split(" ", lower(local.app_name)))
  protocol_provider = authentik_provider_proxy.application.id
  meta_launch_url   = lookup(var.proxy_config, "meta_launch_url", null)
}
