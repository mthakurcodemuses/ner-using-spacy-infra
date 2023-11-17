resource "aws_vpc_endpoint" "nlp_app_vpce_autoscaling" {
  policy = jsonencode(
    {
      Statement = [
        {
          Action    = "*"
          Effect    = "Allow"
          Principal = "*"
          Resource  = "*"
        },
      ]
    }
  )
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids = [
    aws_security_group.nlp_app_all_nodes_sg.id,
    aws_security_group.nlp_app_eks_cluster_sg.id
  ]
  service_name = format("com.amazonaws.%s.autoscaling", data.aws_region.current.name)
  subnet_ids = [
    aws_subnet.nlp_app_vpc_subnet_i1.id,
    aws_subnet.nlp_app_vpc_subnet_i2.id,
  ]
  tags              = {}
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.nlp_app_vpc.id

  timeouts {}
}

resource "aws_vpc_endpoint" "nlp_app_vpce_ec2" {
  policy = jsonencode(
    {
      Statement = [
        {
          Action    = "*"
          Effect    = "Allow"
          Principal = "*"
          Resource  = "*"
        },
      ]
    }
  )
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids = [
    aws_security_group.nlp_app_all_nodes_sg.id,
    aws_security_group.nlp_app_eks_cluster_sg.id
  ]
  service_name = format("com.amazonaws.%s.ec2", data.aws_region.current.name)
  subnet_ids = [
    aws_subnet.nlp_app_vpc_subnet_i1.id,
    aws_subnet.nlp_app_vpc_subnet_i2.id,
  ]
  tags              = {}
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.nlp_app_vpc.id

  timeouts {}
}

resource "aws_vpc_endpoint" "nlp_app_vpce_ec2messages" {
  policy = jsonencode(
    {
      Statement = [
        {
          Action    = "*"
          Effect    = "Allow"
          Principal = "*"
          Resource  = "*"
        },
      ]
    }
  )
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids = [
    aws_security_group.nlp_app_all_nodes_sg.id,
    aws_security_group.nlp_app_eks_cluster_sg.id
  ]
  service_name = format("com.amazonaws.%s.ec2messages", data.aws_region.current.name)
  subnet_ids = [
    aws_subnet.nlp_app_vpc_subnet_i1.id,
    aws_subnet.nlp_app_vpc_subnet_i2.id,
  ]
  tags              = {}
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.nlp_app_vpc.id

  timeouts {}
}

resource "aws_vpc_endpoint" "nlp_app_vpce_elb" {
  policy = jsonencode(
    {
      Statement = [
        {
          Action    = "*"
          Effect    = "Allow"
          Principal = "*"
          Resource  = "*"
        },
      ]
    }
  )
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids = [
    aws_security_group.nlp_app_all_nodes_sg.id,
    aws_security_group.nlp_app_eks_cluster_sg.id
  ]
  service_name = format("com.amazonaws.%s.elasticloadbalancing", data.aws_region.current.name)
  subnet_ids = [
    aws_subnet.nlp_app_vpc_subnet_i1.id,
    aws_subnet.nlp_app_vpc_subnet_i2.id,
  ]
  tags              = {}
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.nlp_app_vpc.id

  timeouts {}
}

resource "aws_vpc_endpoint" "nlp_app_vpce_logs" {
  policy = jsonencode(
    {
      Statement = [
        {
          Action    = "*"
          Effect    = "Allow"
          Principal = "*"
          Resource  = "*"
        },
      ]
    }
  )
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids = [
    aws_security_group.nlp_app_all_nodes_sg.id,
    aws_security_group.nlp_app_eks_cluster_sg.id
  ]
  service_name = format("com.amazonaws.%s.logs", data.aws_region.current.name)
  subnet_ids = [
    aws_subnet.nlp_app_vpc_subnet_i1.id,
    aws_subnet.nlp_app_vpc_subnet_i2.id,
  ]
  tags              = {}
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.nlp_app_vpc.id

  timeouts {}
}

resource "aws_vpc_endpoint" "nlp_app_vpce_ssm" {
  policy = jsonencode(
    {
      Statement = [
        {
          Action    = "*"
          Effect    = "Allow"
          Principal = "*"
          Resource  = "*"
        },
      ]
    }
  )
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids = [
    aws_security_group.nlp_app_all_nodes_sg.id,
    aws_security_group.nlp_app_eks_cluster_sg.id
  ]
  service_name = format("com.amazonaws.%s.ssm", data.aws_region.current.name)
  subnet_ids = [
    aws_subnet.nlp_app_vpc_subnet_i1.id,
    aws_subnet.nlp_app_vpc_subnet_i2.id,
  ]
  tags              = {}
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.nlp_app_vpc.id

  timeouts {}
}

resource "aws_vpc_endpoint" "nlp_app_vpce_ssmmessages" {
  policy = jsonencode(
    {
      Statement = [
        {
          Action    = "*"
          Effect    = "Allow"
          Principal = "*"
          Resource  = "*"
        },
      ]
    }
  )
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids = [
    aws_security_group.nlp_app_all_nodes_sg.id,
    aws_security_group.nlp_app_eks_cluster_sg.id
  ]
  service_name = format("com.amazonaws.%s.ssmmessages", data.aws_region.current.name)
  subnet_ids = [
    aws_subnet.nlp_app_vpc_subnet_i1.id,
    aws_subnet.nlp_app_vpc_subnet_i2.id,
  ]
  tags              = {}
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.nlp_app_vpc.id

  timeouts {}
}

resource "aws_vpc_endpoint" "nlp_app_vpce_sts" {
  policy = jsonencode(
    {
      Statement = [
        {
          Action    = "*"
          Effect    = "Allow"
          Principal = "*"
          Resource  = "*"
        },
      ]
    }
  )
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids = [
    aws_security_group.nlp_app_all_nodes_sg.id,
    aws_security_group.nlp_app_eks_cluster_sg.id
  ]
  service_name = format("com.amazonaws.%s.sts", data.aws_region.current.name)
  subnet_ids = [
    aws_subnet.nlp_app_vpc_subnet_i1.id,
    aws_subnet.nlp_app_vpc_subnet_i2.id,
  ]
  tags              = {}
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.nlp_app_vpc.id

  timeouts {}
}

resource "aws_vpc_endpoint" "nlp_app_vpce_eks" {
  policy = jsonencode(
    {
      Statement = [
        {
          Action    = "*"
          Effect    = "Allow"
          Principal = "*"
          Resource  = "*"
        },
      ]
    }
  )
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids = [
    aws_security_group.nlp_app_all_nodes_sg.id,
    aws_security_group.nlp_app_eks_cluster_sg.id
  ]
  service_name = format("com.amazonaws.%s.eks", data.aws_region.current.name)
  subnet_ids = [
    aws_subnet.nlp_app_vpc_subnet_i1.id,
    aws_subnet.nlp_app_vpc_subnet_i2.id,
  ]
  tags              = {}
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.nlp_app_vpc.id

  timeouts {}
}


resource "aws_vpc_endpoint" "nlp_app_vpce_grafana" {
  policy = jsonencode(
    {
      Statement = [
        {
          Action    = "*"
          Effect    = "Allow"
          Principal = "*"
          Resource  = "*"
        },
      ]
    }
  )
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids = [
    aws_security_group.nlp_app_all_nodes_sg.id,
    aws_security_group.nlp_app_eks_cluster_sg.id
  ]
  service_name = format("com.amazonaws.%s.grafana", data.aws_region.current.name)
  subnet_ids = [
    aws_subnet.nlp_app_vpc_subnet_i1.id,
    aws_subnet.nlp_app_vpc_subnet_i2.id,
  ]
  tags              = {}
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.nlp_app_vpc.id

  timeouts {}
}