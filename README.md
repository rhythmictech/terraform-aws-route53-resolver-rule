# terraform-aws-route53-resolver-rule
[![](https://github.com/rhythmictech/terraform-aws-route53-resolver-rule/workflows/check/badge.svg)](https://github.com/rhythmictech/terraform-aws-route53-resolver-rule/actions)


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| associated\_vpcs |  | list(string) | n/a | yes |
| forward\_domain |  | string | n/a | yes |
| forward\_ips |  | list(string) | n/a | yes |
| resolver\_endpoint |  | string | n/a | yes |
| resource\_share\_accounts |  | list(string) | `[]` | no |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
