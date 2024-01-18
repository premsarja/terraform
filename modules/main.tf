#calling ec2 module

module "sg" {
  source = "./ec2"
  sg  = module.sg
}

module "aws_security_group" {
  source = "./security_group"
}

