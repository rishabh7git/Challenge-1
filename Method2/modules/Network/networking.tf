# create a custom vpc
resource "aws_vpc" "terraform_vpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = var.vpc_name
  }
}

### tier #1 - web tier

# create an internet gateway to connect vpc with internet
resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.terraform_vpc.id
}

# create a public subnet #1
resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.public_subnet_cidr_block_1

  tags = {
    Name = var.public_subnet_name_1
  }
}

# create a public route table #1
resource "aws_route_table" "public_subnet_1_to_internet" {
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }

  tags = {
    Name = var.public_route_table_1
  }
}

# make a route table connection in between public route table #1 with public subnet #1
resource "aws_route_table_association" "internet_for_public_subnet_1" {
  route_table_id = aws_route_table.public_subnet_1_to_internet.id
  subnet_id      = aws_subnet.public_subnet_1.id
}

## ensure high availability of web tier
# create a public subnet #2
resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.public_subnet_cidr_block_2

  tags = {
    Name = var.public_subnet_name_2
  }
}

# create a public route table #2
resource "aws_route_table" "public_subnet_2_to_internet" {
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }

  tags = {
    Name = var.public_route_table_2
  }
}

# make a route table connection in between public route table #2 with public subnet #2
resource "aws_route_table_association" "internet_for_public_subnet_2" {
  route_table_id = aws_route_table.public_subnet_2_to_internet.id
  subnet_id      = aws_subnet.public_subnet_2.id
}



### tier #2 - app tier
# create a private subnet #1
resource "aws_subnet" "private_subnet_1" {
  cidr_block = var.private_subnet_cidr_block_1
  vpc_id = aws_vpc.terraform_vpc.id
  availability_zone = var.private_subnet_1_az

  tags = {
    Name = var.tagkey_name_private_subnet_1
  }
}

# create an EIP #1 and Nat gateway #1
resource "aws_eip" "eip_1" {
  count = "1"
}

resource "aws_nat_gateway" "natgateway_1" {
  count = "1"
  allocation_id = aws_eip.eip_1[count.index].id
  subnet_id = aws_subnet.public_subnet_1.id
}

# create a private route table #1
resource "aws_route_table" "nategateway_route_table_1" {
  count  = "1"
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natgateway_1[count.index].id
  }

  tags = {
    Name = var.tagkey_name_natgateway_route_table_1
  }
}

# make a route table connection in between private route table #1 with private subnet #1
resource "aws_route_table_association" "private_subnet_1_to_natgateway" {
  count          = "1"
  route_table_id = aws_route_table.nategateway_route_table_1[count.index].id
  subnet_id      = aws_subnet.private_subnet_1.id
}

## ensure high availability of app tier
# create a private subnet #2
resource "aws_subnet" "private_subnet_2" {
  cidr_block = var.private_subnet_cidr_block_2
  vpc_id = aws_vpc.terraform_vpc.id
  availability_zone = var.private_subnet_2_az

  tags = {
    Name = var.tagkey_name_private_subnet_2
  }
}

# create an EIP #2 and Nat gateway #2
resource "aws_eip" "eip_2" {
  count = "1"
}

resource "aws_nat_gateway" "natgateway_2" {
  count = "1"
  allocation_id = aws_eip.eip_2[count.index].id
  subnet_id = aws_subnet.public_subnet_2.id
}

# create a private route table #2
resource "aws_route_table" "nategateway_route_table_2" {
  count  = "1"
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natgateway_2[count.index].id
  }

  tags = {
    Name = var.tagkey_name_natgateway_route_table_2
  }
}

# make a route table connection in between private route table #2 with private subnet #2
resource "aws_route_table_association" "private_subnet_2_to_natgateway" {
  count          = "1"
  route_table_id = aws_route_table.nategateway_route_table_2[count.index].id
  subnet_id      = aws_subnet.private_subnet_2.id
}

### tier #3 - database tier
# create a private subnet #3
resource "aws_subnet" "private_subnet_3" {
  cidr_block = var.private_subnet_cidr_block_3
  vpc_id = aws_vpc.terraform_vpc.id
  availability_zone = var.private_subnet_3_az

  tags = {
    Name = var.tagkey_name_private_subnet_3
  }
}

# create an EIP #3 and Nat gateway #3
resource "aws_eip" "eip_3" {
  count = "1"
}

resource "aws_nat_gateway" "natgateway_3" {
  count = "1"
  allocation_id = aws_eip.eip_3[count.index].id
  subnet_id = aws_subnet.private_subnet_3.id
}

# create a private route table #3
resource "aws_route_table" "nategateway_route_table_3" {
  count  = "1"
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natgateway_3[count.index].id
  }

  tags = {
    Name = var.tagkey_name_natgateway_route_table_3
  }
}

# make a route table connection in between private route table #3 with private subnet #3
resource "aws_route_table_association" "private_subnet_3_to_natgateway" {
  count          = "1"
  route_table_id = aws_route_table.nategateway_route_table_3[count.index].id
  subnet_id      = aws_subnet.private_subnet_3.id
}

## ensure high availability of database tier
# create a private subnet #4
resource "aws_subnet" "private_subnet_4" {
  cidr_block = var.private_subnet_cidr_block_4
  vpc_id = aws_vpc.terraform_vpc.id
  availability_zone = var.private_subnet_4_az

  tags = {
    Name = var.tagkey_name_private_subnet_4
  }
}

# create an EIP #4 and Nat gateway #4
resource "aws_eip" "eip_4" {
  count = "1"
}

resource "aws_nat_gateway" "natgateway_4" {
  count = "1"
  allocation_id = aws_eip.eip_4[count.index].id
  subnet_id = aws_subnet.private_subnet_4.id
}

# create a private route table #4
resource "aws_route_table" "nategateway_route_table_4" {
  count  = "1"
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natgateway_4[count.index].id
  }

  tags = {
    Name = var.tagkey_name_natgateway_route_table_4
  }
}

# make a route table connection in between private route table #4 with private subnet #4
resource "aws_route_table_association" "private_subnet_4_to_natgateway" {
  count          = "1"
  route_table_id = aws_route_table.nategateway_route_table_4[count.index].id
  subnet_id      = aws_subnet.private_subnet_4.id
}
