locals {
  app_name    = "application1"
  environment = "${terraform.workspace}"
 }
 locals {
    context_variables = {
     dev = {
     region =  "us-east-2"
    }
      
    prepod = {
        region = "us-east-1"
        }
        }

region = "${lookup(local.context_variables[local.environment],"region")}"
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





