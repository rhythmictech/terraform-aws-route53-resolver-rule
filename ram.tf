resource "aws_ram_resource_share" "endpoint_share" {
  count			    = length(var.resource_share_accounts) > 0 ? 1 : 0
  name                      = "route53-${var.forward_domain}-share"
  allow_external_principals = false
  #tags                      = merge(local.common_tags, var.additional_tags)
}

resource "aws_ram_principal_association" "endpoint_ram_principal" {
  count              = length(var.resource_share_accounts)
  principal          = var.resource_share_accounts[count.index]
  resource_share_arn = aws_ram_resource_share.endpoint_share[0].arn
}

resource "aws_ram_resource_association" "endpoint_ram_resource" {
  count			    = length(var.resource_share_accounts) > 0 ? 1 : 0
  resource_arn       = aws_route53_resolver_rule.fwd.arn
  resource_share_arn = aws_ram_resource_share.endpoint_share[0].arn
}
