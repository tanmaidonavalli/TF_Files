
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
    bucket     = "${lookup(var.project_name, var.env)}-${random_id.tf_bucket_id.dec}"
    dynamodb_table = "${lookup(var.project_name, var.env)}-${random_id.tf_bucket_id.dec}"
  }
}
