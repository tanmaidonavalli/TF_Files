
terraform {
  backend "s3" {
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    }
}

data "terraform_remote_state" "state" {
  backend = "s3"
  config {
    bucket     = "${var.project_name}"
    dynamodb_table = "${var.project_name}"
  }
}
