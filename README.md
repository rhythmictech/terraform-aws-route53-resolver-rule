# terraform-aws-route53-resolver-rule
[![](https://github.com/rhythmictech/terraform-aws-route53-resolver-rule/workflows/check/badge.svg)](https://github.com/rhythmictech/terraform-aws-route53-resolver-rule/actions)

Create and manage a [Route 53 Resolver Resolver Rule](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver-rules-managing.html).

## Usage

```
module "route53-rule-ad-corp" {
  source            = "git::https://github.com/rhythmictech/terraform-aws-route53-resolver-rule?ref=v0.0.2"
  associated_vpcs   = ["vpc-1234567"]
  forward_domain    = "ad.mycompany.com."
  forward_ips       = ["192.168.100.10", "192.168.100.11"]
  resolver_endpoint = module.route53-outbound.endpoint_id
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| associated\_vpcs | List of VPC IDs to associate rule to | `list(string)` | n/a | yes |
| dns\_port | DNS port to forward DNS requests to | `number` | `53` | no |
| forward\_domain | Domain name to forward requests for | `string` | n/a | yes |
| forward\_ips | List of IPs to forward DNS requests to | `list(string)` | n/a | yes |
| resolver\_endpoint | Resolver Endpoint ID | `string` | n/a | yes |
| resource\_share\_accounts | List of account IDs to share this resolver rule with | `list(string)` | `[]` | no |
| tags | Map of tags to apply to supported resources | `map(string)` | `{}` | no |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects
* [Route 53 Resolver Endpoint module](https://github.com/rhythmictech/terraform-aws-route53-endpoint)
