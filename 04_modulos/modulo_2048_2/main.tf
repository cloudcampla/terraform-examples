module "vpc" {
  source  = "git::https://github.com/Sharwin/vpc.git?ref=v1.0.0"
  # cidr = var.cidr
}

module "ec2" {
  source = "git::https://github.com/Sharwin/ec2.git?ref=v1.0.0"
  vpc_id  = module.vpc.vpc_id
  subnet_id = module.vpc.public_subnet_id
  key_pair_name = "ivan.bello"
}