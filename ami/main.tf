data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "^ansible"
  owners           = ["self"]
}

resource "aws_instance" "example" {
  count          = length(var.howmanyyouwant)
  ami            = data.aws_ami.ami.id  # Corrected reference to AMI ID
  instance_type  = "t3.micro"

  tags = {
    Name = "terraform-sarja-instance-${count.index + 1}"
  }
}

provider "aws" {}

terraform {
  backend "s3" {
    bucket   = "msdd"
    key      = "dev/ec2/terraform.tfstate"
    region   = "us-east-1"
  }
}

