locals {
  env = {
    app1-dev = {
      name                    = "dev"
    }

    app1-prod = {
      name                    = "prod"
    }
  }

  workspace = "${local.env[terraform.workspace]}"
}
