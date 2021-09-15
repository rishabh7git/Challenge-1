variable "alb_name" {
  type        = string
  description = "alb_name"
}

variable "alb_internal" {
  type        = bool
  description = "alb_internal"
}

variable "load_balancer_type" {
  type        = string
  description = "load_balancer_type"
}

variable "enable_deletion_protection" {
  type        = bool
  description = "enable_deletion_protection"
}

variable "alb_tagname" {
  type        = string
  description = "alb_tagname"
}
