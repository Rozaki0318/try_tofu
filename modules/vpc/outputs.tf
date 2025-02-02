output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public.id
}