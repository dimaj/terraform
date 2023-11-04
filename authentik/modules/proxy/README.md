<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_authentik"></a> [authentik](#provider\_authentik) | 2023.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [authentik_application.application](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/resources/application) | resource |
| [authentik_provider_proxy.application](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/resources/provider_proxy) | resource |
| [authentik_flow.default-authentication-flow](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/data-sources/flow) | data source |
| [authentik_flow.default-authorization-flow](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/data-sources/flow) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | Name of an application to create | `string` | n/a | yes |
| <a name="input_mode"></a> [mode](#input\_mode) | Mode for this proxy application | `string` | `"forward_single"` | no |
| <a name="input_outpost_integration_id"></a> [outpost\_integration\_id](#input\_outpost\_integration\_id) | ID of the Outpost connection | `string` | n/a | yes |
| <a name="input_proxy_config"></a> [proxy\_config](#input\_proxy\_config) | Configuration for proxy application/outpost/provider | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_application_id"></a> [application\_id](#output\_application\_id) | Application ID |
<!-- END_TF_DOCS -->