variable "instance_type" {
  description = "El tipo de instancia EC2"
  default     = {
    stage    = "t2.micro"
    production = "t2.micro"
  }
}