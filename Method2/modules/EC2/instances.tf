### EC2 information
# Create a keypair
resource "tls_private_key" "public_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ec2_key" {
  key_name   = var.key_name
  public_key = tls_private_key.public_key.public_key_openssh
}

# Create 2 EC instances for high availability
locals {
  subs = concat([${modules.Network.subnet_id_1}], [${modules.Network.subnet_id_2}])
}

resource "aws_instance" "terraform_ec2" {
  count          = var.ec2_count
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = aws_key_pair.ec2_key.key_name
  vpc_security_group_ids      = [aws_security_group.alb_sg.id]
  subnet_id                   = element(local.subs, 2)
  associate_public_ip_address = var.associate_public_ip_address_bool
}
