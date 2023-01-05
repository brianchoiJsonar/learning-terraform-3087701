data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["979382823631"] # Bitnami
}

resource "aws_instance" "web" {
  ami           = "ami-0ba1f6f0ac0fdbc71"
  instance_type = "t3.nano"

  tags = {
    Name = "HelloWorld"
    Owner = "brian.choi@imperva.com"
  }
}
