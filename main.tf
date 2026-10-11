data "aws_lbs" "lbs_lookup" {
  for_each = var.lbs_lookup

  region = each.value.region
  tags   = each.value.tags
}

