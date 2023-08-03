# Codigo ejemplo NO USAR TERRAFORM APPLY
############# Variables

variable "name" {
  description = "descripción de la variable"
  type        = "tipo de variable" # string, list, map
  default     = "valor predeterminado de la variable"
}

############# Argumentos

variable "instance_type" {
  description = "Tipo de instancia a utilizar para la instancia EC2"
  type        = string
  default     = "t2.micro"
}

resource "aws_instance" "ejemplo" {
  ami           = "ami-a1b2c3d4e5f6"
  instance_type = var.instance_type
}

#############