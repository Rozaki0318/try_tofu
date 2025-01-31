resource "aws_vpc" "example" {
  cidr_block = var.cidr_block
  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "public" {
  for_each                = { for idx, subnet in var.public_subnets : idx => subnet }
  vpc_id                  = aws_vpc.example.id
  availability_zone       = each.value.az
  cidr_block              = each.value.cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.vpc_name}-${each.value.name}-${substr(each.value.az, -2, 0)}"
  }
}