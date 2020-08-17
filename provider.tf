provider "aws" {
  region = var.AWS_REGION
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "instance1" {
  #count = 2
  ami = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "db2"
    

  tags = {
      #Name = "tinstance ${count.index}"
      Name = "tinstance"
  }
}




















