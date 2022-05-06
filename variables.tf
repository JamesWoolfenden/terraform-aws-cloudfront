
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
  type    = bool
  default = true
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

variable "policy_name" {
  type = string
}


variable "content_security_policy" {
  default = {
    content_security_policy = "default-src 'none'; img-src 'self'; script-src 'self'; style-src 'self'; object-src 'none'; frame-ancestors 'none'"
    override                = true
  }
}

variable "xss_protection" {
  default = {
    mode_block = true
    override   = true
    protection = true
  }
}

variable "frame_options" {
  default = {
    frame_option = "DENY"
    override     = true
  }
}

variable "content_type_options" {
  type    = bool
  default = true
}

variable "referrer_policy" {
  default = {
    referrer_policy = "same-origin"
    override        = true
  }
}

variable "strict_transport_security" {
  default = {
    access_control_max_age_sec = 31536000
    include_subdomains         = true
    override                   = true
    preload                    = true
  }
}
