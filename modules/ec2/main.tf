# creates ec2 
resource "aws_instance" "example_instance" {
  ami             = "ami-xxxxxxxxxxxxxxxxx"  # Replace with your desired AMI ID
  instance_type   = "t2.micro"
  key_name        = "your-key-pair-name"     # Replace with your key pair name
  vpc_security_group_ids = [var.vpc_security_group_ids]

  tags = {
    Name = "example-instance"
  }
}

variable "sgid" {}