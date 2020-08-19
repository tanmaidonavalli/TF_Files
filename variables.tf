locals {
  app_name       = "workspaces-app"
  profile_prefix = "tf-tutorial-workspaces"
}

locals {
 region = {
  "app1-dev" = "us-east-1"
}
  }

locals {
  environment = "${terraform.workspace}"
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

variable "env" {
  description = "env: dev or prod"
}

