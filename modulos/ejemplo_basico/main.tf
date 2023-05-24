// main.tf
module "example_module" {
  source       = "./mi_modulo"
}

output "ec2_id" {
  value = module.example_module.instance_id
}

output "ec2_ip" {
  value = module.example_module.ip
}