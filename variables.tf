
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

variable "distribution_enabled" {
  type = string
}

variable "domain_name" {
  type = string
}

variable "ipv6_enabled" {
  type = string
}

variable "logging_include_cookies" {
  type = string
}

variable "price_class" {
  type = string
}

variable "restriction_type" {
  type = string
}

variable "ssl_support_method" {
  type = string
}

variable "web_acl_id" {
  type = string
}

variable "origin" {
  type = map(any)
}

variable "aliases" {
  type = list(any)
}

variable "default_cache" {
  type = map(any)
}

variable "restriction_locations" {
  type = list(any)
}

variable "logging_config" {
  type = map(any)
}

variable "common_tags" {
  type = map(any)
}
