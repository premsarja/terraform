
resource "aws_security_group" "sagar" {
  name        = "allow-sagar"
  description = "Allow TLS inbound traffics"

  ingress {
    description = "ssh  from VPC internet "
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_sagar"
  }
}









resource "aws_instance" "example_instance" {
  ami             = "ami-xxxxxxxxxxxxxxxxx"  # Replace with your desired AMI ID
  instance_type   = "t2.micro"
  key_name        = "your-key-pair-name"     # Replace with your key pair name
  vpc_security_group_ids = [aws_security_group.sagar.id]

  tags = {
    Name = "example-instance"
  }
}
