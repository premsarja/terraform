resource "aws_instance" "sagar" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.medium"

  tags = {
    Name = "sagar-tf-instance"
  }
}

# Other provider configurations, such as access_key, secret_key, etc., can be added here.