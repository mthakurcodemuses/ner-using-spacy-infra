resource "aws_iam_role_policy" "nlp_app_eks_nodeinstance_role_policy_EC2" {
    name = "nlp_app_eks_nodeinstance_role_policy_EC2"
    role = aws_iam_role.nlp_app_eks_nodeinstance_role.id
    policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
        {
          Action = [
            "ec2:AttachVolume",
            "ec2:CreateSnapshot",
            "ec2:CreateTags",
            "ec2:CreateVolume",
            "ec2:DeleteSnapshot",
            "ec2:DeleteTags",
            "ec2:DeleteVolume",
            "ec2:DescribeAvailabilityZones",
            "ec2:DescribeInstances",
            "ec2:DescribeSnapshots",
            "ec2:DescribeTags",
            "ec2:DescribeVolumes",
            "ec2:DescribeVolumesModifications",
            "ec2:DetachVolume",
            "ec2:ModifyVolume",
            "elasticfilesystem:*",
            "ec2:DescribeSubnets",
            "ec2:CreateNetworkInterface",
            "ec2:DescribeNetworkInterfaces",
            "ec2:DeleteNetworkInterface",
            "ec2:ModifyNetworkInterfaceAttribute",
            "ec2:DescribeNetworkInterfaceAttribute"
          ]
          Effect   = "Allow"
          Resource = "*"
        }]
    })

}