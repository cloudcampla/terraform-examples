// main.tf en la configuración raíz
module "vpc" {
  source = "./modules/vpc"
}

module "security_group" {
  source = "./modules/security_group"
}

variable "instance_count" {
  default = {
    staging    = 2
    production = 5
  }
}

resource "aws_instance" "example" {
  count = lookup(var.instance_count, terraform.workspace)

  // Otras configuraciones de la instancia...
}
