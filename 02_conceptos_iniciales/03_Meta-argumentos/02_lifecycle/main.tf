data "aws_ami" "example"{
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
    # values = ["al2023-ami-2023.*arm64"]
  }
}

resource "aws_instance" "example" {
  ami          = data.aws_ami.example.id
  instance_type = "t2.micro"

  tags = {
    bootcamp = "devops"
  }

  lifecycle {
    # El ID de AMI debe hacer referencia a una AMI que contenga un sistema operativo
    # para la arquitectura `x86_64` .
    precondition {
      condition     = data.aws_ami.example.architecture == "x86_64"
      error_message = "The selected AMI must be for the x86_64 architecture."
    }
  }

  provisioner "local-exec" {
    command = "echo '¡Instancia creada!'"
  }

}
