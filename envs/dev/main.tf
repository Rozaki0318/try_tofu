module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = "192.168.1.0/24"
}

