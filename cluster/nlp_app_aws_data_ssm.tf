data "aws_ssm_parameter" "eks_cluster_sg" {
  name = "/nlp_app/eks/cluster_sg"
}

data "aws_ssm_parameter" "eks_cluster_role_arn" {
  name = "/nlp_app/eks/cluster_role_arn"
}

data "aws_ssm_parameter" "eks_kms_keyarn" {
  name = "/nlp_app/eks/kms_keyarn"
}

data "aws_ssm_parameter" "eks_cluster_private_subnet_1" {
  name = "/nlp_app/eks/subnet_private_1"
}

data "aws_ssm_parameter" "eks_cluster_private_subnet_2" {
  name = "/nlp_app/eks/subnet_private_2"
}