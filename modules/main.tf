#calling ec2 module

module "ec2" {
  source = "./ec2"
  security_group  = module.security_group
}

module "aws_security_group" {
  source = "./security_group"
}
