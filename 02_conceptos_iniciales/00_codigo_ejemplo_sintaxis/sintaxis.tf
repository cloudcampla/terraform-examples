#Codigo ejemplo NO USAR TERRAFORM APPLY
############# Bloques

resource "aws_instance" "ejemplo" {
  ami           = "ami-a1b2c3d4e5f7"
  instance_type = "t2.micro"
}

############# Argumentos

ami = "ami-a1b2c3d4e5f7"

############# Expresiones

ami = aws_ami.example.id

############# Cadena de caracteres - número

variable "ejemplo_numero" {
  description = "Un ejemplo de variable numérica"
  type        = number
  default     = 42
}

variable "ejemplo_cadena" {
  description = "Un ejemplo de variable de cadena"
  type        = string
  default     = "hello world"
}

variable "cadena_o_numero" {
  description = "¿Cadena de caracteres o número?"
  default     = "23"
}

############# Lists and Maps - ( Listas y Mapas)

variable "ejemplo_lista" {
  description = "Un ejemplo de variable de lista"
  type        = list(string)
  default     = ["apple", "banana", "cherry"]
}

variable "ejemplo_mapa" {
  description = "Un ejemplo de variable de mapa"
  type        = map(string)
  default     = { "key1" = "value1", "key2" = "value2" }
}

############# Valores Booleanos

variable "ejemplo_booleano" {
  description = "Un ejemplo de variable booleana"
  type        = bool
  default     = true
}




