### RDS Mysql information
# Create 2 RDS Mysql intances for high availability
resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds_subnet_group"
  subnet_ids = [${modules.Network.subnet_id_3}, ${modules.Network.subnet_id_4}]

  tags = {
    Name = "RDS Mysql subnet group"
  }
}

resource "aws_db_instance" "rds_mysql_instance"  {
  count                 = var.rds_mysql_instance_count
  allocated_storage     = var.rds_allocated_storage
  engine                = var.rds_engine
  engine_version        = var.rds_engine_version
  instance_class        = var.rds_instance_class
  name                  = var.rds_name
  username              = var.rds_username
  password              = var.rds_password
  parameter_group_name  = var.rds_parameter_group_name
  skip_final_snapshot   = var.rds_skip_final_snapshot
  publicly_accessible   = var.rds_publicly_accessible
  vpc_security_group_ids = [${module.SecurityGroup.alb_sg_id}]
  db_subnet_group_name = aws_db_subnet_group.rds_subnet_group.id
}
