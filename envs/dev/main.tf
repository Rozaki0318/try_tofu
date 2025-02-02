module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = "192.168.0.0/16"
  public_subnet = {
    az   = "ap-northeast-1a"
    name = "public"
    cidr = "192.168.1.0/24"
  }
}

module "alb" {
  source        = "../../modules/alb"
  vpc_id        = module.vpc.vpc_id
  public_subnet = module.vpc.public_subnet
  alb_sg        = aws_security_group.alb_sg.id
}

module "ecs" {
  source               = "../../modules/ecs"
  public_subnet        = module.vpc.public_subnet
  alb_sg               = aws_security_group.alb_sg.id
  alb_target_group_arn = module.alb.alb_target_group_arn
  ecr_image            = "986340587505.dkr.ecr.ap-northeast-1.amazonaws.com/my-python-app:latest"
}

resource "aws_security_group" "alb_sg" {
  name_prefix = "alb-sg"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "alb_dns_name" {
  value = module.alb.alb_dns_name
}