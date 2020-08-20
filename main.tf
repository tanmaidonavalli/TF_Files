
resource "aws_s3_bucket" "workspacedemo" {
  bucket = "samplebucketfordemo"
  acl    = "private"
  force_destroy = true
  versioning {
    enabled = true
  }
  tags = local.common_tags
}
