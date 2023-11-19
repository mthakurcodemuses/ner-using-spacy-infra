locals {
  cni_config = file("${path.module}/cni.json")
}

resource "aws_eks_addon" "vpc-cni" {
  depends_on = [aws_eks_cluster.nlp_app_eks_cluster]
  cluster_name      = aws_eks_cluster.nlp_app_eks_cluster.name
  addon_name        = "vpc-cni"
  resolve_conflicts = "OVERWRITE"
  configuration_values = local.cni_config
  addon_version        = "v1.12.1-eksbuild.1"
  preserve = true
}