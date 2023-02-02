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

#resource "aws_instance" "web" {
#  ami           = "ami-0ba1f6f0ac0fdbc71"
#  instance_type = "r6i.xlarge"

#  tags = {
#    Name = "HelloWorld"
#    Owner = "brian.choi@imperva.com"
#  }
  
 resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "brian-terraform-testing"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
   
  tags = {
    Owner = "brian.choi@imperva.com"
  }
}
  
}
