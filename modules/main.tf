#calling ec2 module

module "ec2" {
  source = "./ec2"
  sg  = module.sg.sgid
}

module "aws_security_group" {
  source = "./security_group"
}

