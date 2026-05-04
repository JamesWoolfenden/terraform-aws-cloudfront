resource "aws_kms_key" "test" {
  # checkov:skip=CKV2_AWS_64: For example only, key policy managed via IAM
  description         = "something"
  enable_key_rotation = true

  tags = local.remap_yor
}
