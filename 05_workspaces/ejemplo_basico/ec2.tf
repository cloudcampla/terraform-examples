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
  instance_type = lookup(var.instance_type, terraform.workspace)

  tags = {
    bootcamp = "devops"
    environment = terraform.workspace
    Name = "Cloud-Camp-${terraform.workspace}"
  }
}