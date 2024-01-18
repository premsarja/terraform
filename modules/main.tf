#calling ec2 module

module "a2" {
  source = "./ec2"
  sgid = module.sgid
}

module "aws_security_group" {
  source = "./security_group"
}

