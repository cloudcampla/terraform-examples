// outputs.tf
output "instance_id" {
  description = "El ID de la instancia EC2 creada"
  value       = aws_instance.cloudcamp.id
}

output "ip" {
  description = "La IP de la instancia creada"
  value = aws_instance.cloudcamp.private_ip
}