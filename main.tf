
resource "aws_s3_bucket" "workspacesdemo" {
  bucket = "bucketfordemo"
  acl    = "private"
  force_destroy = true
  versioning {
    enabled = true
  }
  tags = local.common_tags
}
