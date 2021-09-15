variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "default vpc_cidr_block"
}

variable "instance_tenancy" {
  type        = string
  default     = "default"
  description = "default instance_tenancy"
}

variable "vpc_name" {
  type        = string
  description = "vpc name"
}

variable "public_subnet_cidr_block_1" {
  type        = string
  description = "public_subnet_cidr_block_1"
}

variable "public_subnet_name_1" {
  type        = string
  default     = "public_subnet_name_1"
  description = "public_subnet_name_1"
}

variable "public_route_table_1" {
  type        = string
  default     = "public_route_table_1"
  description = "public_route_table_1"
}

variable "public_subnet_cidr_block_2" {
  type        = string
  description = "public_subnet_cidr_block_2"
}

variable "public_subnet_name_2" {
  type        = string
  default     = "public_subnet_name_2"
  description = "public_subnet_name_2"
}

variable "public_route_table_2" {
  type        = string
  default     = "public_route_table_2"
  description = "public_route_table_2"
}

variable "private_subnet_cidr_block_1" {
  type        = string
  description = "private_subnet_cidr_block_1"
}

variable "private_subnet_1_az" {
  type        = string
  description = "private_subnet_1_az"
}

variable "tagkey_name_private_subnet_1" {
  type        = string
  description = "tagkey_name_private_subnet_1"
}

variable "tagkey_name_natgateway_route_table_1" {
  type        = string
  description = "tagkey_name_natgateway_route_table_1"
}

variable "private_subnet_cidr_block_2" {
  type        = string
  description = "private_subnet_cidr_block_2"
}

variable "private_subnet_2_az" {
  type        = string
  description = "private_subnet_2_az"
}

variable "tagkey_name_private_subnet_2" {
  type        = string
  description = "tagkey_name_private_subnet_2"
}

variable "tagkey_name_natgateway_route_table_2" {
  type        = string
  description = "tagkey_name_natgateway_route_table_2"
}

variable "private_subnet_cidr_block_3" {
  type        = string
  description = "private_subnet_cidr_block_3"
}

variable "private_subnet_3_az" {
  type        = string
  description = "private_subnet_3_az"
}

variable "tagkey_name_private_subnet_3" {
  type        = string
  description = "tagkey_name_private_subnet_3"
}

variable "tagkey_name_natgateway_route_table_3" {
  type        = string
  description = "tagkey_name_natgateway_route_table_3"
}

variable "private_subnet_cidr_block_4" {
  type        = string
  description = "private_subnet_cidr_block_4"
}

variable "private_subnet_4_az" {
  type        = string
  description = "private_subnet_4_az"
}

variable "tagkey_name_private_subnet_4" {
  type        = string
  description = "tagkey_name_private_subnet_4"
}

variable "tagkey_name_natgateway_route_table_4" {
  type        = string
  description = "tagkey_name_natgateway_route_table_4"
}
