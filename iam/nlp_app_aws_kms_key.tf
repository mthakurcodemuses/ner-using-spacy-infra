resource "aws_kms_key" "nlp_app_eks_kms_key" {
  description = format("EKS KMS Key 2 %s", var.eks_cluster_name)
}

output "nlp_app_eks_kms_key_id" {
  value = aws_kms_key.nlp_app_eks_kms_key.key_id
}