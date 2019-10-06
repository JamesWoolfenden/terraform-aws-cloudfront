
variable "acm_certificate_arn" {
  type = string
}

variable "cloudfront_default_certificate" {
  type = string
}

variable "comment" {
  type = string
}

variable "default_root_object" {
  type = string
}

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
  type = list
}

variable "default_cache" {
  type = map
}

variable "restriction_locations" {
  type = list
}

variable "logging_config" {
  type = map
}

variable "common_tags" {
  type = map
}
