# terraform-aws-cloudfront

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-cloudfront/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-cloudfront)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-cloudfront.svg)](https://github.com/JamesWoolfenden/terraform-aws-cloudfront/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-cloudfront.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-cloudfront/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-cloudfront/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-cloudfront&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-cloudfront/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-cloudfront&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module to provision infra .

## Usage

Creates a static site with cloudfront distribution in front

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudfront_distribution.distribution](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution) | resource |
| [aws_cloudfront_response_headers_policy.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_response_headers_policy) | resource |
| [aws_cloudfront_response_headers_policy.pass](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_response_headers_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acm_certificate_arn"></a> [acm\_certificate\_arn](#input\_acm\_certificate\_arn) | n/a | `string` | n/a | yes |
| <a name="input_aliases"></a> [aliases](#input\_aliases) | n/a | `list(any)` | n/a | yes |
| <a name="input_cloudfront_default_certificate"></a> [cloudfront\_default\_certificate](#input\_cloudfront\_default\_certificate) | n/a | `string` | n/a | yes |
| <a name="input_comment"></a> [comment](#input\_comment) | n/a | `string` | n/a | yes |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | n/a | `map(any)` | n/a | yes |
| <a name="input_content_security_policy"></a> [content\_security\_policy](#input\_content\_security\_policy) | n/a | `map` | <pre>{<br>  "content_security_policy": "default-src 'none'; img-src 'self'; script-src 'self'; style-src 'self'; object-src 'none'; frame-ancestors 'none'",<br>  "override": true<br>}</pre> | no |
| <a name="input_content_type_options"></a> [content\_type\_options](#input\_content\_type\_options) | n/a | `bool` | `true` | no |
| <a name="input_default_cache"></a> [default\_cache](#input\_default\_cache) | n/a | `map(any)` | n/a | yes |
| <a name="input_default_root_object"></a> [default\_root\_object](#input\_default\_root\_object) | n/a | `string` | n/a | yes |
| <a name="input_distribution_enabled"></a> [distribution\_enabled](#input\_distribution\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | n/a | `string` | n/a | yes |
| <a name="input_frame_options"></a> [frame\_options](#input\_frame\_options) | n/a | `map` | <pre>{<br>  "frame_option": "DENY",<br>  "override": true<br>}</pre> | no |
| <a name="input_ipv6_enabled"></a> [ipv6\_enabled](#input\_ipv6\_enabled) | n/a | `string` | n/a | yes |
| <a name="input_logging_config"></a> [logging\_config](#input\_logging\_config) | n/a | `map(any)` | n/a | yes |
| <a name="input_logging_include_cookies"></a> [logging\_include\_cookies](#input\_logging\_include\_cookies) | n/a | `string` | n/a | yes |
| <a name="input_origin"></a> [origin](#input\_origin) | n/a | `map(any)` | n/a | yes |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | n/a | `string` | n/a | yes |
| <a name="input_price_class"></a> [price\_class](#input\_price\_class) | n/a | `string` | n/a | yes |
| <a name="input_referrer_policy"></a> [referrer\_policy](#input\_referrer\_policy) | n/a | `map` | <pre>{<br>  "override": true,<br>  "referrer_policy": "same-origin"<br>}</pre> | no |
| <a name="input_restriction_locations"></a> [restriction\_locations](#input\_restriction\_locations) | n/a | `list(any)` | n/a | yes |
| <a name="input_restriction_type"></a> [restriction\_type](#input\_restriction\_type) | n/a | `string` | n/a | yes |
| <a name="input_ssl_support_method"></a> [ssl\_support\_method](#input\_ssl\_support\_method) | n/a | `string` | n/a | yes |
| <a name="input_strict_transport_security"></a> [strict\_transport\_security](#input\_strict\_transport\_security) | n/a | `map` | <pre>{<br>  "access_control_max_age_sec": 31536000,<br>  "include_subdomains": true,<br>  "override": true,<br>  "preload": true<br>}</pre> | no |
| <a name="input_web_acl_id"></a> [web\_acl\_id](#input\_web\_acl\_id) | n/a | `string` | n/a | yes |
| <a name="input_xss_protection"></a> [xss\_protection](#input\_xss\_protection) | n/a | `map` | <pre>{<br>  "mode_block": true,<br>  "override": true,<br>  "protection": true<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_distribution"></a> [distribution](#output\_distribution) | n/a |
| <a name="output_domain_name"></a> [domain\_name](#output\_domain\_name) | n/a |
| <a name="output_hosted_zone_id"></a> [hosted\_zone\_id](#output\_hosted\_zone\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-cloudfront/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-cloudfront/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2018-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-cloudfront&url=https://github.com/JamesWoolfenden/terraform-aws-cloudfront
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-cloudfront&url=https://github.com/JamesWoolfenden/terraform-aws-cloudfront
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-cloudfront
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-cloudfront
[share_email]: mailto:?subject=terraform-aws-budget&body=https://github.com/JamesWoolfenden/terraform-aws-cloudfront
