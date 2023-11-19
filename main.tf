resource "tls_private_key" "eks_nodegroup_instance_keypair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

module "eks_iam_role_policies" {
  source           = "./iam"
  public_key       = tls_private_key.eks_nodegroup_instance_keypair.public_key_openssh
  eks_cluster_name = var.eks_cluster_name
}

module "eks_ssm" {
  source                                 = "./ssm"
  eks_cluster_service_role_arn           = module.eks_iam_role_policies.eks_cluster_service_role_arn
  eks_nodegroup_instance_role_arn        = module.eks_iam_role_policies.eks_nodegroup_instance_role_arn
  eks_nodegroup_ec2instance_keypair_name = module.eks_iam_role_policies.eks_nodegroup_instance_ec2_key_pair_name
}

module "eks_base_network" {
  source = "./network"
}

module "eks_cluster" {
  source                      = "./cluster"
  depends_on = [module.eks_base_network, module.eks_iam_role_policies, module.eks_ssm]
  nlp_app_eks_cluster_name    = var.eks_cluster_name
  nlp_app_eks_cluster_version = "1.25"
}

module "eks_node_group" {
  source = "./nodegroup"
  depends_on = [module.eks_cluster]
}