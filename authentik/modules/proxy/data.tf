
data "authentik_flow" "default-authorization-flow" {
  slug = "default-provider-authorization-implicit-consent"
}

data "authentik_flow" "default-authentication-flow" {
  slug = lookup(var.proxy_config, "authn_flow", null)
}
