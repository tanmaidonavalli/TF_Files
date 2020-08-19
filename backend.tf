terraform {
  required_version = "~> 0.12"
  backend "s3" {
    key            = "terraform.tfstate"
    bucket         = "app1workspace-app1-dev"
    dynamodb_table = "terraform-state-lock-app1dev"
    region         = "us-east-1"
    encrypt        = true
    workspaces { prefix = "app1-dev" }
  }
}
