variable "associated_vpcs" {
  description = "List of VPC IDs to associate rule to"
  type        = list(string)
}

variable "forward_domain" {
  description = "Domain name to forward requests for"
  type        = string
}

variable "forward_ips" {
  description = "List of IPs to forward DNS requests to"
  type        = list(string)
}

variable "dns_port" {
  type        = number
  description = "DNS port to forward DNS requests to"
  default     = 53
}

variable "resolver_endpoint" {
  description = "Resolver Endpoint ID"
  type        = string
}

variable "resource_share_accounts" {
  default     = []
  description = "List of account IDs to share this resolver rule with"
  type        = list(string)
}

variable "tags" {
  default     = {}
  description = "Map of tags to apply to supported resources"
  type        = map(string)
}
