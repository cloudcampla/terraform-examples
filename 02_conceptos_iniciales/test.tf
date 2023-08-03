variable "instance_type" {
  description = "Tipo de instancia a utilizar para la instancia EC2"
  type        = string
  default     = "t2.micro"
}

resource "aws_instance" "example" {
  ami           = "ami-a1b2c3d4"
  instance_type = var.instance_type
}
