resource "aws_iam_role_policy_attachment" "nlp_app_eks_nodeinstance_role_policy_AWSManagedPolicies" {
    role = aws_iam_role.nlp_app_eks_nodeinstance_role.id
    for_each = toset([
        "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
        "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
        "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
        "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
        "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
        ])
    policy_arn = each.value
}