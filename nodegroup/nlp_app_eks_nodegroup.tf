resource "aws_eks_node_group" "nlp_app_eks_nodegroup" {
  depends_on = [aws_launch_template.nlp_app_eks_node_instance_lt]
  cluster_name  = data.aws_eks_cluster.nlp_app_eks_cluster.name
  disk_size = 0
  instance_types = []
  node_group_name = format("nodegroup-%s", data.aws_eks_cluster.nlp_app_eks_cluster.name)
  node_role_arn = data.aws_ssm_parameter.nlp_app_eks_nodeinstance_role_arn.value

  subnet_ids = [
    data.aws_ssm_parameter.nlp_app_eks_subnet_private_1.value,
    data.aws_ssm_parameter.nlp_app_eks_subnet_private_2.value
  ]

  tags = {
    "eks/cluster-name"                            = data.aws_eks_cluster.nlp_app_eks_cluster.name
    "eks/nodegroup-name"                          = format("ng1-%s", data.aws_eks_cluster.nlp_app_eks_cluster.name)
    "eks/nodegroup-type"                          = "managed"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = data.aws_eks_cluster.nlp_app_eks_cluster.name
  }

  launch_template {
    version = "1"
    name = aws_launch_template.nlp_app_eks_node_instance_lt.name
  }

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  lifecycle {
    ignore_changes = [scaling_config[0].desired_size]
  }
}