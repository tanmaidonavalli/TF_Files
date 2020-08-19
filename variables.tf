locals {
  app_name       = "application1"
  environment = "${terraform.workspace}"
  region = {
    
  "app1-dev" = "us-east-2"
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





