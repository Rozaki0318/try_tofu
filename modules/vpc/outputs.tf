output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_1" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public_1.id
}

output "public_subnet_2" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public_2.id
}