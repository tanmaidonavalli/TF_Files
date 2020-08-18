

# Create the bucket
resource "aws_s3_bucket" "tf_code" {
  bucket = "app1-dev"
  acl    = "private"

  force_destroy = true

  tags = {
    Name = "tf_bucket"
  }
}


