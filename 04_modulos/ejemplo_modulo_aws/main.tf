provider "aws" {
  region = "us-east-1"
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.2.1"

  name               = "my-instance"

  ami                = "ami-0889a44b331db0194"
  instance_type      = "t2.micro"
  key_name           = "miprimerabk"

  tags = {
    bootcamp = "devops"
  }
}
