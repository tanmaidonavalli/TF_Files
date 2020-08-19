locals {
  app_name       = "application1"
  environment = "${terraform.workspace}"
  region = {
    type = map(string)
  "app1-dev" = "us-east-1"
    "app1-prepod" = "us-east-1"
}
}

locals {
  common_tags = {
    Terraform   = "true"
    Environment = local.environment
  }
  name_prefix = "${local.app_name}-${local.environment}"
}

variable "aws_access_key" {
  type = string
  description = "AWS access key"
}

variable "aws_secret_key" {
  type = string
  description = "AWS secret key"
}





