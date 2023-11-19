resource "aws_eks_identity_provider_config" "nlp_app_eks_cluster_oidc" {
  cluster_name = aws_eks_cluster.nlp_app_eks_cluster.name
  oidc {
    client_id                     = "sts.amazonaws.com"
    identity_provider_config_name = aws_eks_cluster.nlp_app_eks_cluster.name
    issuer_url                    = aws_eks_cluster.nlp_app_eks_cluster.identity.0.oidc.0.issuer
  }
}