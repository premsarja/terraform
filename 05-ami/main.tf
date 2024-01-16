data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "^ansible"
  owners           = ["self"]
}

resource "aws_instance" "ami" {
  count          = length(var.howmanyyouwant)
  ami            = data.aws_ami.ami.id  # Corrected reference to AMI ID
  instance_type  = "t3.micro"

  tags = {
    Name = "${var.howmanyyouwant[count.index]}"
  }
}

output "private_ip_address" {
  value = [for instance in aws_instance.ami : instance.private_ip]
}

