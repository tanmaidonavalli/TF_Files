
resource "aws_s3_bucket" "bucket" {
  bucket = local.name_prefix
  acl    = "private"
  region = "us-east-1"
  force_destroy = true
  versioning {
    enabled = true
  }
  tags = local.common_tags
}

resource "aws_s3_bucket" "bucketdemo" {
  bucket = "bucketdemo"
  region = "us-west-1"
  force_destroy = true
  
  tags = local.common_tags
}
