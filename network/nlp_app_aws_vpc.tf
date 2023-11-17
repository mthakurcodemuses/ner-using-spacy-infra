resource "aws_vpc" "nlp_app_vpc" {
  assign_generated_ipv6_cidr_block = false
  cidr_block                       = "10.0.0.0/22"
  enable_dns_hostnames             = true
  enable_dns_support               = true
  instance_tenancy                 = "default"
}

resource "aws_vpc_ipv4_cidr_block_association" "nlp_app_vpc_cidr_assoc" {
  cidr_block = "100.64.0.0/16"
  vpc_id     = aws_vpc.nlp_app_vpc.id
  timeouts {}
}