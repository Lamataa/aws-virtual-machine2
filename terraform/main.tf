module "network" {
  source      = "./modules/network"
  vpc_cidr    = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
  az          = "us-east-1a"
}

module "vm" {
  source           = "./modules/vm"
  ami              = "ami-0c101f26f147fa7fd"
  subnet_id        = module.network.subnet_id
  security_group_id= module.network.security_group_id
  user_data_path   = "./scripts/user_data.sh"
  instance_type    = "t2.micro"
}
