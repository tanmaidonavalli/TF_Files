terraform {
 backend “s3” {
 encrypt = true
 bucket = "ga-terraform-dev-26439"
 region = us-west-2
 key = "terraform.tfstate.d/app1-dev/"
 }
}
