locals {
  app_name    = "application1"
  environment = "${terraform.workspace}"
 }
 
locals {
  common_tags = {
    Terraform   = "true"
    Environment = local.environment
  }
  name_prefix = "${local.app_name}-${local.environment}"
}
