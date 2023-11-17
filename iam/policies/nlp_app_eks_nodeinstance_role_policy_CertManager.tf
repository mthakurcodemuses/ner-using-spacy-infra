resource "aws_iam_role_policy" "nlp_app_eks_nodeinstance_role_policy_CertManager" {
    name = "nlp_app_eks_nodeinstance_role_policy_CertManager"
    role = aws_iam_role.nlp_app_eks_nodeinstance_role.id
    policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
        {
          Action = [
            "route53:ChangeResourceRecordSets",
          ]
          Effect   = "Allow"
          Resource = "arn:aws:route53:::hostedzone/*"
        },
        {
          Action = [
            "route53:GetChange",
          ]
          Effect   = "Allow"
          Resource = "arn:aws:route53:::change/*"
        },
        {
          Action = [
            "route53:ListResourceRecordSets",
            "route53:ListHostedZonesByName",
            "route53:ListHostedZones",
            "route53:ListTagsForResource",
          ]
          Effect   = "Allow"
          Resource = "*"
        }]
    })

}