output "eks_cluster_service_role_arn" {
  value = aws_iam_role.nlp_app_eks_cluster_service_role.arn
}

output "eks_nodegroup_instance_role_arn" {
  value = aws_iam_role.nlp_app_eks_nodeinstance_role.arn
}

output "eks_nodegroup_instance_ec2_key_pair_name" {
  value = aws_key_pair.nlp_app_eks_nodegroup_ec2_key_pair.key_name
}