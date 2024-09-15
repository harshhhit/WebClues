resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id
}

resource "aws_route" "pub_route" {
  route_table_id         = aws_route_table.route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.gateway_id
}

