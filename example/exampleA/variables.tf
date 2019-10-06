variable "acm_certificate_arn" {}
variable "cloudfront_default_certificate" {}
variable "comment" {}
variable "default_root_object" {}
variable "distribution_enabled" {}
variable "domain_name" {}
variable "ipv6_enabled" {}
variable "logging_include_cookies" {}

variable "price_class" {}
variable "restriction_type" {}
variable "ssl_support_method" {}
variable "web_acl_id" {}


variable "origin" {
  type = map
}

variable "aliases" {
  type = "list"
}


variable "restriction_locations" {
  type = "list"
}

variable "common_tags" {
  type = "map"
}

variable "logging_config" {
  type = map
}

variable "default_cache" {
  type = map
}
