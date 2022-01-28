resource "aws_cloudfront_response_headers_policy" "example" {
  name = var.policy_name

  security_headers_config {
    content_security_policy {
      content_security_policy = var.content_security_policy["content_security_policy"]
      override                = var.content_security_policy["override"]
    }

    content_type_options {
      override = var.content_type_options["override"]
    }

    frame_options {
      frame_option = var.frame_options["frame_option"]
      override     = var.frame_options["override"]
    }

    referrer_policy {
      referrer_policy = var.referrer_policy["referrer_policy"]
      override        = var.referrer_policy["override"]
    }

    strict_transport_security {
      access_control_max_age_sec = var.strict_transport_security["access_control_max_age_sec"]
      include_subdomains         = var.strict_transport_security["include_subdomains"]
      override                   = var.strict_transport_security["override"]
      preload                    = var.strict_transport_security["preload"]
    }

    xss_protection {
      mode_block = var.xss_protection["mode_block"]
      override   = var.xss_protection["override"]
      protection = var.xss_protection["protection"]
    }
  }
}
