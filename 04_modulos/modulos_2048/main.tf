terraform {
  cloud {

    organization = "ivan_cloud"

    workspaces {
      name = "modules"
    }
  }
}

module "vpc" {
  source = "./modules/vpc"
  cidr = var.cidr
}

module "ec2" {
  source  = "./modules/ec2"
  vpc_id  = module.vpc.vpc_id
  subnet_id = module.vpc.public_subnet_id
  key_pair_name = "ivan.bello"
}

