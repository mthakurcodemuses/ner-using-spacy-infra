resource "aws_iam_role_policy" "nlp_app_eks_cluster_role_policy_ELBPermissions" {
    name = "nlp_app_eks_cluster_role_policy_ELBPermissions"
    role = aws_iam_role.nlp_app_eks_cluster_service_role.id
    policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Effect = "Allow"
                Action = [
                    "ec2:DescribeAccountAttributes",
                    "ec2:DescribeAddresses",
                    "ec2:DescribeInternetGateways",
                ],
                Resource = "*"
            }
        ]
    })
}