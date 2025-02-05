variable "vpc_name" {
  type    = string
  default = "my-vpc"
}

variable "cidr_block" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_1" {
  description = "VPC SUBNET"
  type        = object({
    az = string
    name = string
    cidr = string
  })
}

variable "public_subnet_2" {
  description = "VPC SUBNET"
  type        = object({
    az = string
    name = string
    cidr = string
  })
}