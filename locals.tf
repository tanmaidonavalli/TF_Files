locals {
  env = {
    labs-us-east-1 = {
      name                    = "labs"
      vpc_cidr                = "10.1.0.0/16"
      multi_nat               = false
    }

    prod-us-east-1 = {
      name                    = "prod"
      vpc_cidr                = "10.0.0.0/16"
      multi_nat               = true
    }
  }

  workspace = "${local.env[terraform.workspace]}"
}
