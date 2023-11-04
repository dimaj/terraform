<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_authentik"></a> [authentik](#provider\_authentik) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [authentik_application.application](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/resources/application) | resource |
| [authentik_provider_oauth2.application](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/resources/provider_oauth2) | resource |
| [authentik_certificate_key_pair.signing-key](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/data-sources/certificate_key_pair) | data source |
| [authentik_flow.default-authentication-flow](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/data-sources/flow) | data source |
| [authentik_flow.default-authorization-flow](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/data-sources/flow) | data source |
| [authentik_scope_mapping.scopes](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/data-sources/scope_mapping) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_code_validity"></a> [access\_code\_validity](#input\_access\_code\_validity) | Duration of access code validity | `string` | `"minutes=1"` | no |
| <a name="input_access_token_validity"></a> [access\_token\_validity](#input\_access\_token\_validity) | Duration of access token validity | `string` | `"minutes=10"` | no |
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | Name of an application to create | `string` | n/a | yes |
| <a name="input_authentication_flow_name"></a> [authentication\_flow\_name](#input\_authentication\_flow\_name) | Name of an authentication flow to use | `string` | `null` | no |
| <a name="input_authorization_flow_name"></a> [authorization\_flow\_name](#input\_authorization\_flow\_name) | Name of the authorization flow to use | `string` | `"default-provider-authorization-implicit-consent"` | no |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | Client ID to use for this application | `string` | `null` | no |
| <a name="input_client_type"></a> [client\_type](#input\_client\_type) | Type of a client: [confidential, public] | `string` | `"confidential"` | no |
| <a name="input_include_claims_in_id_token"></a> [include\_claims\_in\_id\_token](#input\_include\_claims\_in\_id\_token) | Whether or not claims should be included in token | `bool` | `true` | no |
| <a name="input_issuer_mode"></a> [issuer\_mode](#input\_issuer\_mode) | Configure how the issuer field of the ID Token should be filled. [per\_provider, global] | `string` | `"per_provider"` | no |
| <a name="input_jwks_sources"></a> [jwks\_sources](#input\_jwks\_sources) | JWTs signed by certificates configured in the selected sources can be used to authenticate to this provider. | `list(string)` | `[]` | no |
| <a name="input_meta_launch_url"></a> [meta\_launch\_url](#input\_meta\_launch\_url) | n/a | `string` | `null` | no |
| <a name="input_redirect_uris"></a> [redirect\_uris](#input\_redirect\_uris) | n/a | `list(string)` | n/a | yes |
| <a name="input_refresh_token_validity"></a> [refresh\_token\_validity](#input\_refresh\_token\_validity) | Duration of the refresh token validity | `string` | `"days=30"` | no |
| <a name="input_scopes"></a> [scopes](#input\_scopes) | Scopes to use for this OAuth app | `list(string)` | n/a | yes |
| <a name="input_signing_key_name"></a> [signing\_key\_name](#input\_signing\_key\_name) | Name of the signing key / certificate | `string` | n/a | yes |
| <a name="input_sub_mode"></a> [sub\_mode](#input\_sub\_mode) | Subjet mode. [ hashed\_user\_id, user\_id, user\_uuid, user\_username, user\_email, user\_upn] | `string` | `"hashed_user_id"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_application_id"></a> [application\_id](#output\_application\_id) | Application ID |
<!-- END_TF_DOCS -->