resource "aws_iam_role_policy_attachment" "nlp_app_eks_cluster_role_policy_AWSManagedPolicies" {
    role = aws_iam_role.nlp_app_eks_cluster_service_role.id
    for_each = toset([
        "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
        "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
        ])
    policy_arn = each.value
}