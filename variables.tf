variable "aws_oidc_configurations" {
  description = <<EOT
Map of aws_oidc_configurations, attributes below
Required:
    - role_arn
Optional:
    - organization
EOT

  type = map(object({
    role_arn     = string
    organization = optional(string)
  }))
}

