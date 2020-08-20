
resource "aws_s3_bucket" "workspacesdemo" {
  bucket = "bucketforstatestoring"
  acl    = "private"
  force_destroy = true
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  tags = local.common_tags
}
