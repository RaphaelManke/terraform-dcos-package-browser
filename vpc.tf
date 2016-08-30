resource "aws_vpc" "vpc" {
  cidr_block = "${var.vpc_subnet_range}"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags {
    Network = "Public"
  }
}
