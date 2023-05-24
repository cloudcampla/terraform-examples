// outputs.tf
output "instance_id" {
  description = "El ID de la instancia EC2 creada"
  value       = aws_instance.cloudcamp.id
}