resource "aws_launch_template" "nlp_app_eks_node_instance_lt" {
  instance_type = "m6a.large"
  key_name = data.aws_ssm_parameter.nlp_app_eks_nodeinstance_keypair_name.value
  image_id = data.aws_ssm_parameter.nlp_app_eks_nodeinstance_image_id.value
  user_data = base64encode(local.eks-nodegroup-ec2-private-userdata)
  vpc_security_group_ids = [data.aws_ssm_parameter.nlp_app_eks_allnodes_sg_name.value]
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = format("%s-ng1", data.aws_eks_cluster.nlp_app_eks_cluster.name)
    }
  }
  lifecycle {
    create_before_destroy = true
  }
}