resource "aws_ssm_parameter" "nlp_app_eks_cluster_role_ssm_param" {
    name = "/nlp_app/eks/cluster_role_arn"
    type = "String"
    description = "EKS Cluster Role ARN"
    value = aws_iam_role.nlp_app_eks_cluster_service_role.arn
}

resource "aws_ssm_parameter" "nlp_app_eks_nodeinstance_role_ssm_param" {
    name = "/nlp_app/eks/nodeinstance_role_arn"
    type = "String"
    description = "EKS Node Instance Role ARN"
    value = aws_iam_role.nlp_app_eks_nodeinstance_role.arn
}

resource "aws_ssm_parameter" "nlp_app_eks_nodeinstance_ec2_key_pair_ssm_param" {
    name = "/nlp_app/eks/nodeinstance_ec2_key_pair_name"
    type = "String"
    description = "EKS Node Instance EC2 Key Pair Name"
    value = aws_key_pair.nlp_app_eks_nodegroup_ec2_key_pair.key_name
}