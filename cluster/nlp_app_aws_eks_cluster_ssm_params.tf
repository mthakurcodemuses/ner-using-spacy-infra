resource "aws_ssm_parameter" "nlp_app_eks_oidc_provider_arn" {
  name        = "/nlp_app/eks/cluster_oidc_provider_arn"
  description = "EKS Cluster oidc arn"
  type        = "String"
  value = aws_eks_identity_provider_config.nlp_app_eks_cluster_oidc.arn
  tags = {
    workshop = "tf-eks-workshop"
  }
}

resource "aws_ssm_parameter" "nlp_app_eks_cluster_name" {
  name        = "/nlp_app/eks/cluster_name"
  description = "The actual EKS cluster name"
  type        = "String"
  value = aws_eks_cluster.nlp_app_eks_cluster.name
}

resource "aws_ssm_parameter" "nlp_app_eks_cluster_sg_id" {
  name        = "/nlp_app/eks/cluster_sg_id"
  description = "EKS cluster created sg"
  type        = "String"
  value = aws_eks_cluster.nlp_app_eks_cluster.vpc_config[0].cluster_security_group_id
}

resource "aws_ssm_parameter" "nlp_app_eks_ca" {
  name        = "/nlp_app/eks/certificate_authority"
  description = "EKS cluster cert authority"
  type        = "String"
  value = aws_eks_cluster.nlp_app_eks_cluster.certificate_authority[0].data
}

resource "aws_ssm_parameter" "nlp_app_eks_cluster_endpoint" {
  name        = "/nlp_app/eks/cluster_endpoint"
  description = "EKS cluster endpoint"
  type        = "String"
  value = aws_eks_cluster.nlp_app_eks_cluster.endpoint
}