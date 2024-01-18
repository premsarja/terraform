#calling ec2 module

module "ec2" {
  source = "./ec2"
  sg = module.sgid
}

module "aws_security_group" {
  source = "./security_group"
}
