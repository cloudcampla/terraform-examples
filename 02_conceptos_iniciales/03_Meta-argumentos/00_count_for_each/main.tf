# Usando count
resource "aws_instance" "example" {
  count        = 2
  ami          = "ami-0f34c5ae932e6f0e4"
  instance_type = "t2.micro"

  tags = {
    Name = "instancia-ejemplo-${count.index}"
    bootcamp = "devops"
  }
}

# Usando for_each con un mapa
variable "usuarios" {
  default = {
    alice = "admin"
    bob   = "solo-lectura"
  }
}

resource "aws_iam_user" "example" {
  for_each = var.usuarios
  name     = each.key
  tags = {
    Rol = each.value
  }
}
