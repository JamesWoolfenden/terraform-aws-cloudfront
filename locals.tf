locals {
  remap_yor = { for k, v in var.tags : replace(replace(k, "yor_", "yor_caller_"), "git_", "git_caller_") => v }
}
