output "lbs_lookup_id" {
  description = "Map of id values across all lbs_lookup, keyed the same as var.lbs_lookup"
  value       = { for k, v in data.aws_lbs.lbs_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lbs_lookup_arns" {
  description = "Map of arns values across all lbs_lookup, keyed the same as var.lbs_lookup"
  value       = { for k, v in data.aws_lbs.lbs_lookup : k => v.arns if v.arns != null && length(v.arns) > 0 }
}
output "lbs_lookup_region" {
  description = "Map of region values across all lbs_lookup, keyed the same as var.lbs_lookup"
  value       = { for k, v in data.aws_lbs.lbs_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lbs_lookup_tags" {
  description = "Map of tags values across all lbs_lookup, keyed the same as var.lbs_lookup"
  value       = { for k, v in data.aws_lbs.lbs_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

