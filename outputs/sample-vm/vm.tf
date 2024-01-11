resource "aws_instance" "web" {
  
  ami                    = "ami-023c11a32b0207432"
  instance_type          = "t3.micro"
#   vpc_security_group_ids = ["sg-12345678"]
  tags = {
    name = "my-tf-instance"
  }
}
