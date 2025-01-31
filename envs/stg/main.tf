module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = "192.168.2.0/24"
}

