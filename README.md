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
| aws | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_cloudfront_distribution](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| acm\_certificate\_arn | n/a | `string` | n/a | yes |
| aliases | n/a | `list(any)` | n/a | yes |
| cloudfront\_default\_certificate | n/a | `string` | n/a | yes |
| comment | n/a | `string` | n/a | yes |
| common\_tags | n/a | `map(any)` | n/a | yes |
| default\_cache | n/a | `map(any)` | n/a | yes |
| default\_root\_object | n/a | `string` | n/a | yes |
| distribution\_enabled | n/a | `string` | n/a | yes |
| domain\_name | n/a | `string` | n/a | yes |
| ipv6\_enabled | n/a | `string` | n/a | yes |
| logging\_config | n/a | `map(any)` | n/a | yes |
| logging\_include\_cookies | n/a | `string` | n/a | yes |
| origin | n/a | `map(any)` | n/a | yes |
| price\_class | n/a | `string` | n/a | yes |
| restriction\_locations | n/a | `list(any)` | n/a | yes |
| restriction\_type | n/a | `string` | n/a | yes |
| ssl\_support\_method | n/a | `string` | n/a | yes |
| web\_acl\_id | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| distribution | n/a |
| domain\_name | n/a |
| hosted\_zone\_id | n/a |
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
