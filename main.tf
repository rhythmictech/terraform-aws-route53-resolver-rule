

resource "aws_route53_resolver_rule" "fwd" {
  domain_name          = var.forward_domain
  rule_type            = "FORWARD"
  resolver_endpoint_id = var.resolver_endpoint

  target_ip {
    ip = var.forward_ips[0]
  }

  target_ip {
    ip = var.forward_ips[1]
  }

}

resource "aws_route53_resolver_rule_association" "fwdrule" {
  count            = length(var.associated_vpcs)
  resolver_rule_id = aws_route53_resolver_rule.fwd.id
  vpc_id           = var.associated_vpcs[count.index]
}