resource "aws_security_group" "nlp_app_all_nodes_sg" {
  description = "Security group for communication between all nodes in the cluster"
  vpc_id      = aws_vpc.nlp_app_vpc.id
  tags = {
    "Name" = format("eks-%s-cluster/ClusterSharedNodeSecurityGroup", var.eks_cluster_name)
  }
}

resource "aws_security_group" "nlp_app_eks_cluster_sg" {
  description = "Security group for communication between control plane and worker nodegroups"
  vpc_id      = aws_vpc.nlp_app_vpc.id
  tags = {
    "Name" = format("eks-%s-cluster/ControlPlaneSecurityGroup", var.eks_cluster_name)
  }
}