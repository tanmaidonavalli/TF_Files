
resource "aws_s3_bucket" "bucket" {
  bucket = local.name_prefix
  acl    = "private"
  force_destroy = true
  versioning {
    enabled = true
  }
  tags = local.common_tags
}


