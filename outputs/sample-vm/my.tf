
resource "aws_instance" "web" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"

  tags = {
    Name = "prem-tf-instance"
  }
}

provider "aws" {
  region = "us-east-1"
  # Other provider configurations, such as access_key, secret_key, etc., can be added here.
}
