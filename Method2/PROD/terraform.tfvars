vpc_cidr_block="10.0.0.0/16"

instance_tenancy="default"

vpc_name="terraform_vpc"

public_subnet_cidr_block_1="10.0.1.0/24"

public_subnet_name_1="public_subnet_name_1"

public_route_table_1="public_route_table_1"

public_subnet_cidr_block_2="10.0.2.0/24"

public_subnet_name_2="mytest_public_subnet_name_2"

public_route_table_2="public_route_table_2"

private_subnet_cidr_block_1="10.0.3.0/24"

private_subnet_1_az="us-east-1a"

tagkey_name_private_subnet_1="private_subnet_1_name"

tagkey_name_natgateway_route_table_1="tagkey_name_natgateway_route_table_1"

private_subnet_cidr_block_2="10.0.4.0/24"

private_subnet_2_az="us-east-1b"

tagkey_name_private_subnet_2="private_subnet_2_name"

tagkey_name_natgateway_route_table_2="tagkey_name_natgateway_route_table_2"

private_subnet_cidr_block_3="10.0.5.0/24"

private_subnet_3_az="us-east-1c"

tagkey_name_private_subnet_3="private_subnet_3_name"

tagkey_name_natgateway_route_table_3="tagkey_name_natgateway_route_table_3"

private_subnet_cidr_block_4="10.0.6.0/24"

private_subnet_4_az="us-east-1d"

tagkey_name_private_subnet_4="private_subnet_4_name"

tagkey_name_natgateway_route_table_4="tagkey_name_natgateway_route_table_4"

key_name="terraform_ec2_key"

ec2_count=2

ec2_ami="ami-048f6ed62451373d9"

ec2_instance_type="t2.micro"

associate_public_ip_address_bool=true

rds_mysql_instance_count=2

rds_allocated_storage="10"

rds_engine="mysql"

rds_engine_version="5.7"

rds_instance_class="db.t3.micro"

rds_name="rdsdb"

rds_username="devops"

rds_password="blueteam"

rds_parameter_group_name="default.mysql5.7"

rds_skip_final_snapshot=true

rds_publicly_accessible=false

alb_name="alb"

alb_internal=false

load_balancer_type="application"

enable_deletion_protection=false

alb_tagname="test"

sg_name="rds_sg"

sg_description="security group of rds mysql"

rds_from_port=3306

rds_to_port=3306

my_ip_address=["72.137.76.221/32"]

sg_egress_from_port=0

sg_egress_to_port=0

sg_egress_protocol="-1"

sg_egress_cidr_blocks=["0.0.0.0/0"]

sg_tagname="rds_sg"
