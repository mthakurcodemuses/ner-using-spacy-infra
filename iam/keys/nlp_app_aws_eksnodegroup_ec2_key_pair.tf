resource "aws_key_pair" "nlp_app_eks_nodegroup_ec2_key_pair" {
    key_name = "nlp_app_eks_nodegroup_ec2_key_pair"
    public_key = file("~/.ssh/id_rsa.pub")
}