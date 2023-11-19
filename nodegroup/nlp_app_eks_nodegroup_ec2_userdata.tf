locals {
  eks-nodegroup-ec2-private-userdata = <<USERDATA
  MIME-Version: 1.0
  Content-Type: multipart/mixed; boundary="==SCRIPTBOUNDARY=="
  --==SCRIPTBOUNDARY==
  Content-Type: text/x-shellscript; charset="us-ascii"
  #!/bin/bash -xe
  sudo /etc/eks/bootstrap.sh --apiserver-endpoint '${data.aws_eks_cluster.nlp_app_eks_cluster.endpoint}' --b64-cluster-ca '${data.aws_eks_cluster.nlp_app_eks_cluster.certificate_authority[0].data}' '${data.aws_eks_cluster.nlp_app_eks_cluster.name}'
  echo "Running custom user data script" > /tmp/me.txt
  yum install -y amazon-ssm-agent
  echo "yum'd agent" >> /tmp/me.txt
  yum update -y
  systemctl enable amazon-ssm-agent && systemctl start amazon-ssm-agent
  date >> /tmp/me.txt
  --==SCRIPTBOUNDARY==--
  USERDATA
}