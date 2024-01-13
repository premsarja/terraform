data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "^ansible"
  owners           = ["self"]
}

resource "aws_instance" "example" {
  count          = 2
  ami            = data.aws_ami.ami.id  # Corrected reference to AMI ID
  instance_type  = "t3.micro"

  tags = {
    Name = "terraform-sarja-instance ${count.index + 1}"
  }
}