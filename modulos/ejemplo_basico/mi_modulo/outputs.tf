// outputs.tf
output "instance_id" {
  description = "El ID de la instancia EC2 creada"
  value       = aws_instance.cloudcamp.id
}

output "ip" {
  description = "EL Ip  de la instancia creada"
  value = aws_instance.cloudcamp.private_ip
}