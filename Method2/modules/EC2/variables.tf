variable "key_name" {
  type        = string
  description = "keyname"
}

variable "ec2_count" {
  type        = number
  description = "ec2_count"
}

variable "ec2_ami" {
  type        = string
  description = "ec2_ami"
}

variable "ec2_instance_type" {
  type        = string
  description = "ec2_instance_type"
}

variable "associate_public_ip_address_bool" {
  type        = bool
  description = "associate_public_ip_address_bool"
}
