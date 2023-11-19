variable "eks_cluster_service_role_arn" {
  description = "EKS Cluster Service Role ARN"
}

variable "eks_nodegroup_instance_role_arn" {
  description = "EKS Cluster Node Group Instance Role ARN"
}

variable "eks_nodegroup_ec2instance_keypair_name" {
  description = "EKS Cluster Node Group EC2 Instance KeyPair Name"
}