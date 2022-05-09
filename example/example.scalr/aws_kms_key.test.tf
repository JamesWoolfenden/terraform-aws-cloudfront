resource "aws_kms_key" "test" {
  description         = "something"
  enable_key_rotation = true

  tags = local.remap_yor
}
