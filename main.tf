provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket = "huang-tfstate"
    key    = "terraform/state.tfstate"
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "huang-demo-3-1"
  acl    = "private"
}