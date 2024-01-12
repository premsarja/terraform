resource "aws_instance" "sarja" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-sarja-instance"
  }
}