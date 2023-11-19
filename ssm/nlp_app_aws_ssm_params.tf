resource "aws_ssm_parameter" "nlp_app_eks_cluster_role_ssm_param" {
    name = "/nlp_app/eks/cluster_role_arn"
    type = "String"
    description = "EKS Cluster Role ARN"
    value = var.eks_cluster_service_role_arn
}

resource "aws_ssm_parameter" "nlp_app_eks_nodeinstance_role_ssm_param" {
    name = "/nlp_app/eks/nodeinstance_role_arn"
    type = "String"
    description = "EKS Node Instance Role ARN"
    value = var.eks_nodegroup_instance_role_arn
}

resource "aws_ssm_parameter" "nlp_app_eks_nodeinstance_ec2_key_pair_ssm_param" {
    name = "/nlp_app/eks/nodeinstance_ec2_key_pair_name"
    type = "String"
    description = "EKS Node Instance EC2 Key Pair Name"
    value = var.eks_nodegroup_ec2instance_keypair_name
}