resource "aws_instance" "sarja" {
  count   = 2
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-sarja-instance ${count.index+1}"
  }
}

