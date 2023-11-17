resource "aws_route_table" "nlp_app_route_table_p1" {
  vpc_id           = aws_vpc.nlp_app_vpc.id
  propagating_vgws = []
  route            = []
  tags = {
    "Name" = format("eks-cluster/PrivateRouteTable-%s", data.aws_availability_zones.az.names[0])
  }
}

resource "aws_route_table_association" "nlp_app_route_table_assoc_sub_p1" {
  route_table_id = aws_route_table.nlp_app_route_table_p1.id
  subnet_id      = aws_subnet.nlp_app_vpc_subnet_p1.id
}

resource "aws_route_table" "nlp_app_route_table_p2" {
  vpc_id           = aws_vpc.nlp_app_vpc.id
  propagating_vgws = []
  route            = []
  tags = {
    "Name" = format("eks-cluster/PrivateRouteTable-%s", data.aws_availability_zones.az.names[1])
  }
}

resource "aws_route_table_association" "nlp_app_route_table_assoc_sub_p2" {
  route_table_id = aws_route_table.nlp_app_route_table_p2.id
  subnet_id      = aws_subnet.nlp_app_vpc_subnet_p2.id
}


resource "aws_route_table" "nlp_app_route_table_isolated" {
  vpc_id           = aws_vpc.nlp_app_vpc.id
  propagating_vgws = []
  route            = []
  tags = {
    "Name" = format("eks-%s-cluster/IsolatedRouteTable", var.eks_cluster_name)
  }
}

resource "aws_route_table_association" "nlp_app_route_table_assoc_sub_i1" {
  route_table_id = aws_route_table.nlp_app_route_table_isolated.id
  subnet_id      = aws_subnet.nlp_app_vpc_subnet_i1.id
}

resource "aws_route_table_association" "nlp_app_route_table_assoc_sub_i2" {
  route_table_id = aws_route_table.nlp_app_route_table_isolated.id
  subnet_id      = aws_subnet.nlp_app_vpc_subnet_i2.id
}