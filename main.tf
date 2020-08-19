
resource "aws_s3_bucket" "bucket" {
  bucket = local.name_prefix
  acl    = "private"
  force_destroy = true
  versioning {
    enabled = true
  }
  tags = local.common_tags
}

resource "aws_instance" "instance1" {
  #count = 2
  ami = "${lookup(var.AMIS, var.aws_region)}"
  instance_type = "t2.micro"
  

  tags = {
      #Name = "tinstance ${count.index}"
      Name = "tinstance"
  }
}

