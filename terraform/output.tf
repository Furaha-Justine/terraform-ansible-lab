output "instance_public_ip" {
  description = "Public IPv4 address of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "instance_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.web.public_dns
}

output "ssh_user" {
  description = "SSH username for Amazon Linux 2"
  value       = var.ssh_user
}

output "key_name" {
  description = "Name of the AWS key pair"
  value       = aws_key_pair.web_key.key_name
}

output "private_key_path" {
  description = "Local path to the generated private key"
  value       = abspath(local_sensitive_file.private_key.filename)
}

output "ssh_connect_command" {
  description = "Ready-to-use SSH command"
  value       = "ssh -i ${abspath(local_sensitive_file.private_key.filename)} ${var.ssh_user}@${aws_instance.web.public_ip}"
}