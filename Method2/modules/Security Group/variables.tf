variable "sg_name" {
  type        = string
  description = "sg_name"
}

variable "sg_description" {
  type        = string
  description = "sg_description"
}

variable "rds_from_port" {
  type        = number
  description = "rds_from_port"
}

variable "rds_to_port" {
  type        = number
  description = "rds_to_port"
}

variable "my_ip_address" {
  type        = list
  description = "my_ip_address"
}


variable "sg_egress_from_port" {
  type        = number
  description = "sg_egress_from_port"
}

variable "sg_egress_to_port" {
  type        = number
  description = "sg_egress_to_port"
}

variable "sg_egress_protocol" {
  type        = string
  description = "sg_egress_protocol"
}

variable "sg_egress_cidr_blocks" {
  type        = list
  description = "sg_egress_cidr_blocks"
}

variable "sg_tagname" {
  type        = string
  description = "sg_name"
}
