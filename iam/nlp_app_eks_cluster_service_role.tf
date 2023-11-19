resource "aws_iam_role" "nlp_app_eks_cluster_service_role"{
    name = "nlp_app_eks_cluster_service_role"
    assume_role_policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
        {
            Effect = "Allow"
            Principal = {
            Service = [
            "eks.amazonaws.com",
            "eks-fargate-pods.amazonaws.com"
            ]
            }
            Action = "sts:AssumeRole"
        },
        ]
    })
    force_detach_policies = false
    max_session_duration   = 3600
    path                   = "/"
    tags = {
        "Name" = "nlp_app_eks_cluster_service_role"
    }
}