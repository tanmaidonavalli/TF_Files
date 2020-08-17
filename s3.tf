resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-state-dev2022"
  # Enable versioning so we can see the full revision history of our
  # state files
  versioning {
    enabled = true
  }
