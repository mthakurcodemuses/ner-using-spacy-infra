resource "aws_iam_role_policy" "nlp_app_eks_nodeinstance_role_policy_AutoScaling" {
    name = "nlp_app_eks_nodeinstance_role_policy_AutoScaling"
    role = aws_iam_role.nlp_app_eks_nodeinstance_role.id
    policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
        {
          Action = [
            "autoscaling:DescribeAutoScalingGroups",
            "autoscaling:DescribeAutoScalingInstances",
            "autoscaling:DescribeLaunchConfigurations",
            "autoscaling:DescribeTags",
            "autoscaling:SetDesiredCapacity",
            "autoscaling:TerminateInstanceInAutoScalingGroup",
            "ec2:DescribeLaunchTemplateVersions"
          ]
          Effect   = "Allow"
          Resource = "*"
        }]
    })

}