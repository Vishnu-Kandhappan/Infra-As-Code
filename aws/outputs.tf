output "aws_instance_ids" {
  value = aws_instance.spot_vm[*].id
}

output "aws_instance_public_ips" {
  value = aws_instance.spot_vm[*].public_ip
}

output "aws_instance_private_ips" {
  value = aws_instance.spot_vm[*].private_ip
}
