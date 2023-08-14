provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "cloudcamp" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"
  tags = {
    bootcamp = "devops"
    Name     = "DisneyPlus"
  }
}
