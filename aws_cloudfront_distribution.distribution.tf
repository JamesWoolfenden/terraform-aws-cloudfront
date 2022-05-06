resource "aws_cloudfront_distribution" "distribution" {
  # checkov:skip=CKV2_AWS_32: broken check
  origin {
    domain_name = var.domain_name
    origin_id   = var.origin["id"]

    custom_origin_config {
      http_port              = var.origin["http_port"]
      https_port             = var.origin["https_port"]
      origin_protocol_policy = var.origin["protocol_policy"]
      origin_ssl_protocols   = split(",", var.origin["ssl_protocols"])
    }
  }

  enabled             = var.distribution_enabled
  is_ipv6_enabled     = var.ipv6_enabled
  comment             = var.comment
  default_root_object = var.default_root_object
  web_acl_id          = var.web_acl_id

  logging_config {
    include_cookies = var.logging_config["include_cookies"]
    bucket          = var.logging_config["bucket"]
    prefix          = var.logging_config["prefix"]
  }

  aliases = var.aliases

  default_cache_behavior {
    response_headers_policy_id = aws_cloudfront_response_headers_policy.example.id
    allowed_methods            = split(",", var.default_cache["allowed_methods"])
    cached_methods             = split(",", var.default_cache["cached_methods"])
    target_origin_id           = var.default_cache["target_origin_id"]

    forwarded_values {
      query_string = var.default_cache["default_forwarded_values_query_string"]

      cookies {
        forward = var.default_cache["forwarded_values_cookies"]
      }
    }

    viewer_protocol_policy = var.default_cache["viewer_protocol_policy"]
    min_ttl                = var.default_cache["min_ttl"]
    default_ttl            = var.default_cache["default_ttl"]
    max_ttl                = var.default_cache["max_ttl"]
  }

  price_class = var.price_class

  restrictions {
    geo_restriction {
      restriction_type = var.restriction_type
      locations        = var.restriction_locations
    }
  }
  viewer_certificate {
    minimum_protocol_version = "TLSv1.2_2021"
    acm_certificate_arn      = var.acm_certificate_arn
    ssl_support_method       = var.ssl_support_method
  }

  tags = var.common_tags
}
