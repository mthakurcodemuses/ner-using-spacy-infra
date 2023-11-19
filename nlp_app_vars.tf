variable "eks_cluster_name" {
  description = "EKS Cluster Name"
  default     = "nlp_app_eks_cluster"
}

variable "eks_version" {
  type    = string
  default = "1.24"
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS Secret Access Key"
  type        = string
  sensitive   = true
}
