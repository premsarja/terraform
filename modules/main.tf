#calling ec2 module

module "tata" {
  source = "./ec2"
  sg  = module.sg.sgid
}

module "aws_security_group" {
  source = "./security_group"
}

