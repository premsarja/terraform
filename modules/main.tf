#calling ec2 module

module "ec2" {
  source = "./ec2"
  sg     = module.sg
}

module "sg" {
  source = "./security_group"
}
