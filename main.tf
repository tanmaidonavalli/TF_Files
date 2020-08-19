
resource "aws_s3_bucket" "bucket" {
  bucket = local.name_prefix
  acl    = "private"
  force_destroy = true
  versioning {
    enabled = true
  }
  tags = local.common_tags
}
resource "aws_s3_bucket" "bucketdemo" {
  bucket = "bucketdemo"
  acl    = "private"
  force_destroy = true
  
  tags = local.common_tags
}
