// main.tf dentro del módulo
provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "cloudcamp" {
  ami           = var.instance_type
  instance_type = "t2.micro"

  tags = {
    Name = "Ejemplo Instancia con modulos"
  }
}