provider "aws"{
    access_key = "${var.AWS_ACCESS_KEY}"
    secret_key = "${var.AWS_SECRET_KEY}"
    region = "${var.AWS_REGION}"
}

resource "aws_instance" "instance1" {
  #count = 2
  ami = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  security_groups = ["${aws_security_group.tf-sg.name}"]  

  tags = {
      #Name = "tinstance ${count.index}"
      Name = "tinstance"
  }
}








