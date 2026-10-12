output "aws_oidc_configurations_id" {
  description = "Map of id values across all aws_oidc_configurations, keyed the same as var.aws_oidc_configurations except keys with no id are omitted"
  value       = { for k, v in tfe_aws_oidc_configuration.aws_oidc_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "aws_oidc_configurations_organization" {
  description = "Map of organization values across all aws_oidc_configurations, keyed the same as var.aws_oidc_configurations except keys with no organization are omitted"
  value       = { for k, v in tfe_aws_oidc_configuration.aws_oidc_configurations : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "aws_oidc_configurations_role_arn" {
  description = "Map of role_arn values across all aws_oidc_configurations, keyed the same as var.aws_oidc_configurations except keys with no role_arn are omitted"
  value       = { for k, v in tfe_aws_oidc_configuration.aws_oidc_configurations : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}

