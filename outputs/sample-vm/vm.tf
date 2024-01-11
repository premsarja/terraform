#resource "aws_instance" "aws" {
#  
#  ami                    = "ami-023c11a32b0207432"
#  instance_type          = "t3.micro"
#
#  tags = {
#    Name = "prem-tf-instance"
#  }
#}
#

#
resource "aws_instance" "web" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"

  tags = {
    Name = "prem-tf-instance"
  }
}
