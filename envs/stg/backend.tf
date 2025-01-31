terraform {
  backend "s3" {
    bucket = "try-tofu-2"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
