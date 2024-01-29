provider "aws" {}

terraform {
  backend "s3" {
    bucket   = "prems"
    key      = "dev/ec2/terraform.tfstate"
    region   = "us-east-1"
  }
}
