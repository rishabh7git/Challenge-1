output "vpc_id" {
  value       = aws_vpc.terraform_vpc.id
  description = "VPC Id"
}

output "gateway_id" {
  value       = aws_internet_gateway.default.id
  description = "gateway id"
}

output "route_table_id_1" {
  value       = aws_route_table.public_subnet_1_to_internet.id
  description = "route table id for public subnet 1"
}

output "subnet_id_1" {
  value       = aws_subnet.public_subnet_1.id
  description = "subnet id 1"
}

output "route_table_id_2" {
  value       = aws_route_table.public_subnet_2_to_internet.id
  description = "route table id for public subnet 2"
}

output "subnet_id_2" {
  value       = aws_subnet.public_subnet_2.id
  description = "subnet 2"
}

output "allocation_id_1" {
  value       = aws_eip.eip_1[count.index].id
  description = "EIP allocated to NAT Gateway 1"
}

output "nat_gateway_id_1" {
  value       = aws_nat_gateway.natgateway_1[count.index].id
  description = "NAT Gateway 1"
}

output "route_table_id_1_private" {
  value       = aws_route_table.nategateway_route_table_1[count.index].id
  description = "route table id for private subnet 1"
}

output "allocation_id_2" {
  value       = aws_eip.eip_2[count.index].id
  description = "EIP allocated to NAT Gateway 2"
}

output "nat_gateway_id_2" {
  value       = aws_nat_gateway.natgateway_2[count.index].id
  description = "NAT Gateway 2"
}

output "route_table_id_2_private" {
  value       = aws_route_table.nategateway_route_table_2[count.index].id
  description = "route table id for private subnet 2"
}

output "subnet_id_3" {
  value       = aws_subnet.public_subnet_3.id
  description = "subnet id 3"
}

output "allocation_id_3" {
  value       = aws_eip.eip_3[count.index].id
  description = "EIP allocated to NAT Gateway 3"
}

output "nat_gateway_id_3" {
  value       = aws_nat_gateway.natgateway_3[count.index].id
  description = "NAT Gateway 3"
}

output "route_table_id_3_private" {
  value       = aws_route_table.nategateway_route_table_3[count.index].id
  description = "route table id for private subnet 3"
}

output "subnet_id_4" {
  value       = aws_subnet.public_subnet_4.id
  description = "subnet id 4"
}

output "allocation_id_4" {
  value       = aws_eip.eip_4[count.index].id
  description = "EIP allocated to NAT Gateway 4"
}

output "nat_gateway_id_4" {
  value       = aws_nat_gateway.natgateway_4[count.index].id
  description = "NAT Gateway 4"
}

output "route_table_id_4_private" {
  value       = aws_route_table.nategateway_route_table_4[count.index].id
  description = "route table id for private subnet 4"
}
