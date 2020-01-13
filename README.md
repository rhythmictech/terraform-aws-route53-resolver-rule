# terraform-aws-route53-resolver-rule
[![](https://github.com/rhythmictech/terraform-aws-route53-resolver-rule/workflows/check/badge.svg)](https://github.com/rhythmictech/terraform-aws-route53-resolver-rule/actions)

Create and manage a [Route 53 Resolver Resolver Rule](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver-rules-managing.html).

## Usage

```
module "route53-rule-internalmoreovercom" {
  source            = "git::https://github.com/rhythmictech/terraform-aws-route53-resolver-rule?ref=v0.0.2"
  associated_vpcs   = [module.vpc.vpc_id]
  forward_domain    = "internal.moreover.com."
  forward_ips       = ["10.234.14.5", "10.234.14.6", "10.234.14.8", "10.234.15.4", "10.234.15.5"]
  resolver_endpoint = module.route53-outbound.endpoint_id
  #resource_share_accounts = ["545918078088"]
}
```

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
