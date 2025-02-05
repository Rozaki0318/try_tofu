variable "vpc_id" {
  description = "VPC ID where the ALB will be deployed"
  type        = string
}

variable "public_subnet" {
  description = "VPC SUBNET"
  type        = list(string)
}

variable "alb_sg" {
  description = "Security Group ID for the ALB"
  type        = string
}