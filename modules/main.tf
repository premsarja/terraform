#calling ec2 module

module "a2" {
  source = "./ec2"
  sg = module.security_group.sgid
}

module "aws_security_group" {
  source = "./security_group"
}

module "sgid" {
  source = "./sgid"
  # Other module configurations...
}