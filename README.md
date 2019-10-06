
# terraform-aws-cloudfront [![Build Status](https://travis-ci.com/JamesWoolfenden/terraform-aws-cloudfront-s3.svg?branch=master)](https://travis-ci.com/JamesWoolfenden/terraform-aws-cloudfront-s3) [![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-cloudfront-s3.svg)](https://github.com/JamesWoolfenden/terraform-aws-cloudfront-s3/releases/latest)

Terraform module to provision infra .

## Usage

Creates a static site with cloudfront distribution in front

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| acm\_certificate\_arn |  | string | n/a | yes |
| aliases |  | list | n/a | yes |
| cloudfront\_default\_certificate |  | string | n/a | yes |
| comment |  | string | n/a | yes |
| common\_tags |  | map | n/a | yes |
| default\_cache |  | map | n/a | yes |
| default\_root\_object |  | string | n/a | yes |
| distribution\_enabled |  | string | n/a | yes |
| domain\_name |  | string | n/a | yes |
| ipv6\_enabled |  | string | n/a | yes |
| logging\_config |  | map | n/a | yes |
| logging\_include\_cookies |  | string | n/a | yes |
| origin |  | map | n/a | yes |
| price\_class |  | string | n/a | yes |
| restriction\_locations |  | list | n/a | yes |
| restriction\_type |  | string | n/a | yes |
| ssl\_support\_method |  | string | n/a | yes |
| web\_acl\_id |  | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| domain\_name |  |
| hosted\_zone\_id |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-budget/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-budget/issues) to report any bugs or file feature requests.

## Copyrights

Copyright � 2019-2019 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

  [![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

  [jameswoolfenden_homepage]: https://github.com/jameswoolfenden
  [jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/company/slalom-consulting/
[twitter]: https://twitter.com/Slalom

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-budget&url=https://github.com/JamesWoolfenden/terraform-aws-budget
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-budget&url=https://github.com/JamesWoolfenden/terraform-aws-budget
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-budget
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-budget
[share_email]: mailto:?subject=terraform-aws-budget&body=https://github.com/JamesWoolfenden/terraform-aws-budget
