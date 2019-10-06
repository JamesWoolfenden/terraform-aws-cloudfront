output "domain_name" {
  value = "${module.cloudfront_distribution.domain_name}"
}

output "hosted_zone_id" {
  value = "${module.cloudfront_distribution.hosted_zone_id}"
}
