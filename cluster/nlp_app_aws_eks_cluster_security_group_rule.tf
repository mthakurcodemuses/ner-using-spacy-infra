resource "aws_security_group_rule" "nlp_app_eks_cluster_sg_rule" {
  type = "ingress"
  from_port = 0
  to_port = 0
  protocol = "-1"
  source_security_group_id = aws_eks_cluster.nlp_app_eks_cluster.vpc_config[0].cluster_security_group_id
  security_group_id = data.aws_ssm_parameter.eks_cluster_sg.value
}