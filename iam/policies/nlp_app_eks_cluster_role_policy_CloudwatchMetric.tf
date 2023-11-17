resource "aws_iam_role_policy" "nlp_app_eks_cluster_role_policy_CloudWatchMetrics" {
    name = "nlp_app_eks_cluster_role_policy_CloudWatchMetrics"
    role = aws_iam_role.nlp_app_eks_cluster_service_role.id
    policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Effect = "Allow"
                Action = [
                    "cloudwatch:PutMetricData"
                ],
                Resource = "*"
            }
        ]
    })
  
}