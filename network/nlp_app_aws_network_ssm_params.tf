resource "aws_ssm_parameter" "nlp_app_eks_cluster_sg" {
  name = "/nlp_app/eks/cluster_sg"
  description = "EKS Cluster security group id"
  type        = "String"
  value = aws_security_group.nlp_app_eks_cluster_sg.id
}

resource "aws_ssm_parameter" "nlp_app_eks_allnodes_sg" {
  name        = "/nlp_app/eks/allnodes_sg"
  description = "EKS cluster all node group id"
  type        = "String"
  value = aws_security_group.nlp_app_all_nodes_sg.id
}

resource "aws_ssm_parameter" "nlp_app_eks_subnet_private_1" {
  name        = "/nlp_app/eks/subnet_private_1"
  description = "EKS cluster Private Subnet 1 id"
  type        = "String"
  value = aws_subnet.nlp_app_vpc_subnet_p1.id
}

resource "aws_ssm_parameter" "nlp_app_eks_subnet_private_2" {
  name        = "/nlp_app/eks/subnet_private_2"
  description = "EKS cluster Private Subnet 2 id"
  type        = "String"
  value = aws_subnet.nlp_app_vpc_subnet_p2.id
}