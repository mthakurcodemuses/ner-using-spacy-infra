resource "aws_subnet" "nlp_app_vpc_subnet_i1" {
  depends_on                      = [aws_vpc_ipv4_cidr_block_association.nlp_app_vpc_cidr_assoc]
  assign_ipv6_address_on_creation = false
  availability_zone               = data.aws_availability_zones.az.names[0]
  cidr_block                      = "100.64.0.0/18"
  map_public_ip_on_launch         = false
  vpc_id                          = aws_vpc.nlp_app_vpc.id
  tags = {
    "Name"                                      = format("i1-%s", var.eks_cluster_name)
    "kubernetes.io/cluster/nlp_app_eks_cluster" = "shared"
  }
}

resource "aws_subnet" "nlp_app_vpc_subnet_i2" {
  depends_on                      = [aws_vpc_ipv4_cidr_block_association.nlp_app_vpc_cidr_assoc]
  assign_ipv6_address_on_creation = false
  availability_zone               = data.aws_availability_zones.az.names[1]
  cidr_block                      = "100.64.64.0/18"
  map_public_ip_on_launch         = false
  vpc_id                          = aws_vpc.nlp_app_vpc.id
  tags = {
    "Name"                                      = format("i2-%s", var.eks_cluster_name)
    "kubernetes.io/cluster/nlp_app_eks_cluster" = "shared"
  }
}

resource "aws_subnet" "nlp_app_vpc_subnet_p1" {
  assign_ipv6_address_on_creation = false
  availability_zone               = data.aws_availability_zones.az.names[0]
  cidr_block                      = "10.0.1.0/24"
  map_public_ip_on_launch         = false
  vpc_id                          = aws_vpc.nlp_app_vpc.id
  tags = {
    "kubernetes.io/cluster/nlp_app_eks_cluster" = "shared"
    "kubernetes.io/role/internal-elb"           = "1"
  }
}

resource "aws_subnet" "nlp_app_vpc_subnet_p2" {
  assign_ipv6_address_on_creation = false
  availability_zone               = data.aws_availability_zones.az.names[1]
  cidr_block                      = "10.0.2.0/24"
  map_public_ip_on_launch         = false
  vpc_id                          = aws_vpc.nlp_app_vpc.id
  tags = {
    "kubernetes.io/cluster/nlp_app_eks_cluster" = "shared"
    "kubernetes.io/role/internal-elb"           = "1"
  }
}