output "vpc_id" {
  value = aws_vpc.main.id
}

output "private_subnet_ids" {
  description = " Private subnet ids"
  value = aws_subnet.private[*].id
}

output "public_subnet_ids" {
  description = " Public subnet ids"
  value = aws_subnet.public[*].id
}

