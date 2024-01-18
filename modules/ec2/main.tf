# creates ec2 
resource "aws_instance" "example_instance" {
  ami             = "ami-033c331c5ccbea9fd"  # Replace with your desired AMI ID
  instance_type   = "t2.micro"
  key_name        = "your-key-pair-name"     # Replace with your key pair name
  vpc_security_group_ids = [var.sg]

  tags = {
    Name = "example-instance"
  }
}
variable "sg" {}