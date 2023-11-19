data "aws_eks_cluster" "nlp_app_eks_cluster" {
  name =  nonsensitive(data.aws_ssm_parameter.nlp_app_eks_cluster_name.value)
}