output "instance_id" {
  value       = aws_instance.master.id
  description = "The ID of the App instance"
}
output "instance_public_ip" {
  value       = aws_instance.master.public_ip
  description = "The public IP address of the App instance"
}
output "ssh_command" {
  value       = "ssh -i ${var.key_name}.pem ubuntu@${aws_instance.master.public_ip}:${var.ssh_port}"
  description = "The SSH command to connect to the App instance"
}