output "bucketname" {
  value = aws_s3_bucket.workspacedemo.id
}
output "LOCALS" {
  value = "${local.region}"
  }
