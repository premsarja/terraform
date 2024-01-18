# creates ec2 
resource "aws_instance" "ex" {
  ami             = "ami-033c331c5ccbea9fd"  # Replace with your desired AMI ID
  instance_type   = "t2.micro"
  vpc_security_group_ids = var.sg

  tags = {
    Name = "ex"
  }
}

# variable "sg" {}

variable "sg" {
  type = set(string)
}
