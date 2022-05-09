module "cloudfront_distribution" {
  source                         = "../../"
  acm_certificate_arn            = var.acm_certificate_arn
  aliases                        = var.aliases
  cloudfront_default_certificate = var.cloudfront_default_certificate
  comment                        = var.comment
  tags = {
    yor_trace = "first"
  }
  content_security_policy = {
    content_security_policy = "default-src 'none'; img-src 'self'; script-src 'self'; style-src 'self'; object-src 'none'; frame-ancestors 'none'"
    override                = true
  }
  content_type_options = true
  default_cache        = var.default_cache
  default_root_object  = var.default_root_object
  distribution_enabled = var.distribution_enabled
  domain_name          = var.domain_name
  frame_options = {
    frame_option = "SAMEORIGIN"
    override     = true
  }
  ipv6_enabled            = var.ipv6_enabled
  logging_config          = var.logging_config
  logging_include_cookies = var.logging_include_cookies
  origin                  = var.origin
  policy_name             = "examplea"
  price_class             = var.price_class
  restriction_locations   = var.restriction_locations
  restriction_type        = var.restriction_type
  referrer_policy = {
    referrer_policy = "no-referrer"
    override        = true
  }
  ssl_support_method = var.ssl_support_method
  strict_transport_security = {
    access_control_max_age_sec = 31536000
    include_subdomains         = true
    override                   = true
    preload                    = true
  }
  web_acl_id = var.web_acl_id
  xss_protection = {
    protection = true
    override   = true
    mode_block = true
  }
}
