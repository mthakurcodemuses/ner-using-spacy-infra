resource "aws_ssm_parameter" "nlp_app_eks_kms_keyid" {
  name        = "/nlp_app/eks/kms_keyid"
  description = "KMS Key Id"
  type        = "String"
  value       = aws_kms_key.nlp_app_eks_kms_key.key_id
}

resource "aws_ssm_parameter" "nlp_app_eks_kms_keyarn" {
  name        = "/nlp_app/eks/kms_keyarn"
  description = "KMS Key ARN"
  type        = "String"
  value       = aws_kms_key.nlp_app_eks_kms_key.arn
}

resource "aws_ssm_parameter" "nlp_app_eks_nodeinstance_keypair" {
  name        = "/nlp_app/eks/nodeinstance_keypair_name"
  description = "SSH key pair name"
  type        = "String"
  value = aws_key_pair.nlp_app_eks_nodegroup_ec2_key_pair.key_name
}