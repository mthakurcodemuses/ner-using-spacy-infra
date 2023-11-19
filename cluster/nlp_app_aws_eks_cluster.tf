resource "aws_eks_cluster" "nlp_app_eks_cluster" {
  name     = var.nlp_app_eks_cluster_name
  enabled_cluster_log_types = [
    "api",
    "audit",
    "authenticator",
    "controllerManager",
    "scheduler"
  ]
  role_arn = data.aws_ssm_parameter.eks_cluster_role_arn.value
  version = var.nlp_app_eks_cluster_version

  vpc_config {
    endpoint_private_access = true
    endpoint_public_access = false
    public_access_cidrs = [
      "0.0.0.0/0"
    ]
    security_group_ids = [
      data.aws_ssm_parameter.eks_cluster_sg.value
    ]
    subnet_ids = [
      data.aws_ssm_parameter.eks_cluster_private_subnet_1.value,
      data.aws_ssm_parameter.eks_cluster_private_subnet_2.value
    ]
  }
  encryption_config {
    provider {
     key_arn = data.aws_ssm_parameter.eks_kms_keyarn.value
    }
    resources = ["secrets"]
  }
}