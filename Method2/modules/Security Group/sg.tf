### shared Security Group
# Create a shared security group
resource "aws_security_group" "alb_sg" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = "${modules.Network.vpc_id}"

  ingress {
    from_port   = var.rds_from_port
    to_port     = var.rds_to_port
    protocol    = "tcp"
    description = "MySQL"
    self        = true
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    description = "SSH"
    cidr_blocks = var.my_ip_address
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    description = "HTTP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    description = "HTTPS"
    self        = true
  }

  egress {
    from_port        = var.sg_egress_from_port
    to_port          = var.sg_egress_to_port
    protocol         = var.sg_egress_protocol
    cidr_blocks      = var.sg_egress_cidr_blocks
  }

  tags = {
    Name = var.sg_tagname
  }
}
