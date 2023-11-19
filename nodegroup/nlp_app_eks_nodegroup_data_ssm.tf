data "aws_ssm_parameter" "nlp_app_eks_cluster_name" {
  name = "/nlp_app/eks/cluster_name"
}

data "aws_ssm_parameter" "nlp_app_eks_allnodes_sg_name" {
  name = "/nlp_app/eks/allnodes_sg"
}

data "aws_ssm_parameter" "nlp_app_eks_nodeinstance_image_id" {
  name = format("/aws/service/eks/optimized-ami/%s/amazon-linux-2/recommended/image_id", data.aws_eks_cluster.nlp_app_eks_cluster.version)
}

data "aws_ssm_parameter" "nlp_app_eks_nodeinstance_keypair_name" {
  name = "/nlp_app/eks/nodeinstance_keypair_name"
}

data "aws_ssm_parameter" "nlp_app_eks_nodeinstance_role_arn"{
  name = "/nlp_app/eks/nodeinstance_role_arn"
}

data "aws_ssm_parameter" "nlp_app_eks_subnet_private_1" {
  name = "/nlp_app/eks/subnet_private_1"
}

data "aws_ssm_parameter" "nlp_app_eks_subnet_private_2" {
  name = "/nlp_app/eks/subnet_private_2"
}