
resource "aws_subnet""public_subnet" {
  vpc_id = var.vpc_id
  cidr_block = var.public_cidr
  availability_zone = var.availability_zones
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet"
  }
}

