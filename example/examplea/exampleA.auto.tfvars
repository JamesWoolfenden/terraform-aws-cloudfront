common_tags = {
  name        = "examplea"
  "createdby" = "terraform"
  module      = "terraform-aws-cloudfront"
}
acm_certificate_arn            = ""
aliases                        = ["jenkins.elitevulkan.com"]
cloudfront_default_certificate = "true"
comment                        = "Make it great again"
default_root_object            = "index.html"
distribution_enabled           = "true"
domain_name                    = "jenkins.domain.com"
ipv6_enabled                   = true
logging_include_cookies        = false
price_class                    = "PriceClass_200"
restriction_locations          = ["GB"]
restriction_type               = "whitelist"
ssl_support_method             = "sni-only"
web_acl_id                     = ""


default_cache = {
  allowed_methods                       = "DELETE,GET,HEAD,OPTIONS,PATCH,POST,PUT"
  cached_methods                        = "HEAD,GET"
  default_ttl                           = "60"
  max_ttl                               = "360"
  min_ttl                               = "60"
  viewer_protocol_policy                = "redirect-to-https"
  forwarded_values_cookies              = "none"
  default_forwarded_values_query_string = false
  target_origin_id                      = ""
}

logging_config = {
  bucket          = "test-terraform-state-JIM.s3.amazonaws.com"
  prefix          = "cloudfront-distro"
  include_cookies = true
}

origin = {
  http_port       = "80"
  https_port      = "443"
  id              = "TestOrigin"
  protocol_policy = "https-only"
  ssl_protocols   = "TLSv1.2"
}
