# creates ec2 
resource "aws_instance" "ex" {
  ami             = "ami-033c331c5ccbea9fd"  # Replace with your desired AMI ID
  instance_type   = "t2.micro"
  key_name        = "your-key-pair-name"     # Replace with your key pair name
  vpc_security_group_ids = [var.security_group]

  tags = {
    Name = "example-instance"
  }
}

variable "security_group" {}