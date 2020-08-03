provider "aws"{
    region = "${var.AWS_REGION}"
    profile    = "${var.profile}"
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

















