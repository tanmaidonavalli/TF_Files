terraform {
  required_version = "~> 0.12"
  backend "s3" {
    key            = "terraform.tfstate"
    bucket         = "application1-app1-dev"
    dynamodb_table = "terraform-state-lock-app1dev"
    encrypt        = true
    workspaces { prefix = "workspaces" }
  }
}
