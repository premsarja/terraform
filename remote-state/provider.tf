provider "aws" {}

terraform {
  backend "s3" {
    bucket         = "bose"
    key            = "dev/ec2/terraform.tfstate"
    region         = "us-east-1"
  }
}
