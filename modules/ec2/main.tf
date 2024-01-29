# creates ec2 
resource "aws_instance" "example" {
  # count           =         5
  ami             = "ami-033c331c5ccbea9fd"  # Replace with your desired AMI ID
  instance_type   = "t2.micro"
  vpc_security_group_ids = [var.sg]

  tags = {
    Name = "example1"
  }
}

variable "sg" {}