# creates ec2 
resource "aws_instance" "example_instance" {
  ami             = "ami-xxxxxxxxxxxxxxxxx"  # Replace with your desired AMI ID
  instance_type   = "t2.micro"
  key_name        = "your-key-pair-name"     # Replace with your key pair name
  vpc_security_group_ids = [aws_security_group.sagar.id]

  tags = {
    Name = "example-instance"
  }
}
