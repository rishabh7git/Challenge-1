variable "rds_mysql_instance_count" {
  type        = number
  description = "rds_mysql_instance_count"
}

variable "rds_allocated_storage" {
  type        = number
  description = "rds_allocated_storage"
}

variable "rds_engine" {
  type        = string
  description = "rds_engine_type"
}

variable "rds_engine_version" {
  type        = string
  description = "rds_engine_version"
}

variable "rds_instance_class" {
  type        = string
  description = "rds_instance_class"
}

variable "rds_name" {
  type        = string
  description = "rds_name"
}

variable "rds_username" {
  type        = string
  description = "rds_username"
}

variable "rds_password" {
  type        = string
  description = "rds_password"
}

variable "rds_parameter_group_name" {
  type        = string
  description = "rds_parameter_group_name"
}

variable "rds_skip_final_snapshot" {
  type        = bool
  description = "rds_skip_final_snapshot"
}

variable "rds_publicly_accessible" {
  type        = bool
  description = "rds_publicly_accessible"
}
