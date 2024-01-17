resource "aws_vpc_peering_connection" "peering" {
  count = var.is_peering_required ? 1 : 0
  vpc_id = aws_vpc.main.id
  peer_vpc_id = var.acceptor_vpc_id == "" ? data.aws_vpc.default.id : var.acceptor_vpc_id
  #auto_accept = var.acceptor_vpc_id ? true : false
  tags = merge(
    var.common_tags,
    var.vpc_peering_tags,
    {
        Name = "${local.name}"
    }
  )
}

resource "aws_route" "acceptor_route" {
  count = var.is_peering_required && var.acceptor_vpc_id == "" ? 1 : 0
  route_table_id            = data.aws_route_table.default.id
  destination_cidr_block    = var.vpc_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[count.index].id
}

resource "aws_route" "public_peering" {
  count = var.is_peering_required && var.acceptor_vpc_id == "" ? 1 : 0
  route_table_id            = data.aws_route_table.default.id
  destination_cidr_block    = var.vpc_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[count.index].id
}