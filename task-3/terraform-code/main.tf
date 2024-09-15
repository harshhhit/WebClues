module "vpc" {
  source        = "./01-network/vpc/modules"
  vpc_name      = "main_vpc"
  cidr_block    = "10.0.0.0/16"
}

module "subnet" {
  source                = "./01-network/subnet/modules"
  vpc_id                = module.vpc.id
  public_cidr           = "10.0.1.0/24"
  availability_zones    = "us-east-1a"

  depends_on = [ module.vpc ]
}

module "igw" {
  source        = "./01-network/igw/modules"
  vpc_id        = module.vpc.id

  depends_on = [ module.vpc ]

}

module "route_table" {
  source        = "./01-network/routetable/modules/routetable"
  gateway_id    = module.igw.id
  vpc_id        = module.vpc.id

  depends_on = [ module.vpc, module.igw ]

}

module "route_table_association" {
  source            = "./01-network/routetable/modules/routetable_association"
  route_table_id    = module.route_table.id
  subnet_id         = module.subnet.id

  depends_on = [ module.vpc, module.subnet ]

}

module "security_group" {
  source            = "./01-network/sgw/modules"
  vpc_id            = module.vpc.id
  sg_name           = "main_sg"
  ingress_rules = [
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = [var.my_ip]
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = [var.my_ip]
    }
  ]

  depends_on = [ module.vpc ]
}

module "ssh_key" {
  source            = "./02-service/ssh_key/modules"
  key_name          = "main_key"
  ssh_rsa           = var.ssh_rsa
}

module "server" {
  source            = "./02-service/ec2/modules"
  server_name       = "harshit"
  subnet_id         = module.subnet.id
  sg_id             = module.security_group.id
  ami_id            = "ami-0e86e20dae9224db8"
  instance_type     = "t2.micro"
  key_name          = module.ssh_key.name

  depends_on = [ module.ssh_key ]

}