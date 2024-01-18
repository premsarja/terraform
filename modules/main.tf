#calling ec2 module

module "ec2" {
  source = "./ec2"
  sg  = module.security_group.sg
}

module "aws_security_group" {
  source = "./security_group"
}

