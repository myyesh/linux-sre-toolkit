output "security_group_id" {
  description = "Security group ID created for the SRE Ops Platform"
  value       = aws_security_group.web_sg.id
}

output "ubuntu_ami_id" {
  description = "Latest Ubuntu AMI ID selected by Terraform"
  value       = data.aws_ami.ubuntu.id
}
output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web_server.id
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.web_server.public_ip
}
