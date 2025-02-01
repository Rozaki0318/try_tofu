module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = "192.168.0.0/16"
  public_subnets = [
    {
      az   = "ap-northeast-1a"
      name = "public"
      cidr = "192.168.1.0/24"
    },
    {
      az   = "ap-northeast-1c"
      name = "public"
      cidr = "192.168.2.0/24"
    },
    {
      az   = "ap-northeast-1d"
      name = "public"
      cidr = "192.168.3.0/24"
    }
  ]
}
