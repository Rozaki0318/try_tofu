variable "alb_sg" {
  description = "Security Group ID for ALB"
  type        = string
}

variable "alb_target_group_arn" {
  description = "ALB Target Group ARN"
  type        = string
}

variable "ecr_image" {
  description = "ECR Image URL"
  type        = string
}

variable "public_subnet" {
  description = "VPC SUBNET"
  type        = list(string)
}
