# provider - aws and region
provider "aws" {
  region  = var.region
}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "default region"
}
