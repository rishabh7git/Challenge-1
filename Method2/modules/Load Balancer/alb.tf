### ALB information
# Create an ALB
resource "aws_lb" "alb" {
  name               = var.alb_name
  internal           = var.alb_internal
  load_balancer_type = var.load_balancer_type
  security_groups    = [${module.SecurityGroup.alb_sg_id}]
  subnets            = [${modules.Network.subnet_id_1},${modules.Network.subnet_id_1}]

  enable_deletion_protection = var.enable_deletion_protection

  tags = {
    Environment  = var.alb_tagname
  }
}
