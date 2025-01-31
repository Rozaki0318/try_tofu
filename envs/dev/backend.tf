terraform {
  backend "s3" {
    bucket = "try-tofu-1"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
