provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "amzn-linux-2023-ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_instance" "cloudcamp" {
  ami           = data.aws_ami.amzn-linux-2023-ami.id
  instance_type = "t2.micro"

  tags = {
    bootcamp = "devops"
  }
}

#output "instance_public_dns" {
#  description = "El DNS público de la instancia"
#  value       = aws_instance.cloudcamp.public_dns
#}