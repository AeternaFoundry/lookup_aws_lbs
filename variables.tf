variable "lbs_lookup" {
  description = <<EOT
Map of lbs_lookup, attributes below
Optional:
    - region
    - tags
EOT

  type = map(object({
    region = optional(string)
    tags   = optional(map(string))
  }))
}

