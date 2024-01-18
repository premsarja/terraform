#calling ec2 module

module "ec2" {                        #any name we can give but source should br correct
  source = "./ec2"
  sgid   = module.sg.sgid
}

module "aws_security_group" {
  source = "./security_group"
}