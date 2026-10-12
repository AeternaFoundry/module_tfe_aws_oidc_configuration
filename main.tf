resource "tfe_aws_oidc_configuration" "aws_oidc_configurations" {
  for_each = var.aws_oidc_configurations

  role_arn     = each.value.role_arn
  organization = each.value.organization
}

