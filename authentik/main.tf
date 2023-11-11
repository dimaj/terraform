module "proxy_app" {
  source                 = "./modules/proxy"
  outpost_integration_id = var.service_connection

  for_each         = var.proxy_apps
  application_name = each.key
  proxy_config     = each.value
}

module "oauth2_app" {
  source = "./modules/oauth2"

  for_each                = var.oauth2_apps
  application_name        = each.key
  redirect_uris           = each.value.redirect_uris
  signing_key_name        = each.value.signing_key_name
  authorization_flow_name = each.value.authorization_flow_name
  client_id               = each.value.client_id
  sub_mode                = each.value.sub_mode
  access_token_validity   = lookup(each.value, "access_token_validity", null)
  access_code_validity    = lookup(each.value, "access_code_validity", null)
  refresh_token_validity  = lookup(each.value, "refresh_token_validity", null)
  scopes                  = each.value.scopes
  meta_launch_url         = lookup(each.value, "meta_launch_url", null)
}

resource "authentik_outpost" "outpost" {
  depends_on         = [module.proxy_app]
  name               = "authentik Embedded Outpost"
  protocol_providers = [for aid in module.proxy_app : aid.application_id]
  type               = "proxy"
  service_connection = var.service_connection
}
