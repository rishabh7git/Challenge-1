module "my_vpc" {
  source = "../modules/Network"
  vpc_cidr_block       = var.vpc_cidr_block
  instance_tenancy = var.instance_tenancy


  vpc_id     = ${module.Network.vpc_id}
  public_subnet_cidr_block_1 = var.public_subnet_cidr_block_1

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = ${module.Network.gateway_id}
  }

  route_table_id_1 = ${module.Network.route_table_id_1}
  subnet_id_1      = ${module.Network.subnet_id_1}

  public_subnet_cidr_block_2 = var.public_subnet_cidr_block_2

  route_table_id_2 = ${module.Network.route_table_id_2}
  subnet_id_2      = ${module.Network.subnet_id_2}

  private_subnet_cidr_block_1 = var.private_subnet_cidr_block_1
  private_subnet_1_az = var.private_subnet_1_az

  allocation_id_1 = var.allocation_id_1

}
