variable "forward_domain" {
  type = string
}
variable "forward_ips" {
  type = list(string)
}

variable "resolver_endpoint" {
  type = string
}

variable "associated_vpcs" {
  type = list(string)
}

variable "resource_share_accounts" {
  type    = list(string)
  default = []
}
