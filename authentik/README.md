<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_authentik"></a> [authentik](#requirement\_authentik) | 2023.8.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_authentik"></a> [authentik](#provider\_authentik) | 2023.8.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_oauth2_app"></a> [oauth2\_app](#module\_oauth2\_app) | ./modules/oauth2 | n/a |
| <a name="module_proxy_app"></a> [proxy\_app](#module\_proxy\_app) | ./modules/proxy | n/a |

## Resources

| Name | Type |
|------|------|
| [authentik_outpost.outpost](https://registry.terraform.io/providers/goauthentik/authentik/2023.8.0/docs/resources/outpost) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_oauth2_apps"></a> [oauth2\_apps](#input\_oauth2\_apps) | List of OAuth2 applications to create | `map(any)` | n/a | yes |
| <a name="input_proxy_apps"></a> [proxy\_apps](#input\_proxy\_apps) | List of Proxy vapplications to create | `map(map(string))` | n/a | yes |
| <a name="input_service_connection"></a> [service\_connection](#input\_service\_connection) | ID of the desired Outpost integration | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_oauth2_app"></a> [oauth2\_app](#output\_oauth2\_app) | OAuth2/OIDC Application IDs |
| <a name="output_proxy_app"></a> [proxy\_app](#output\_proxy\_app) | Proxy Application IDs |
<!-- END_TF_DOCS -->