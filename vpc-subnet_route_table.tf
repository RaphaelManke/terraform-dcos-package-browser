resource "aws_route_table" "vpc-subnet_route_table" {
  vpc_id = "${aws_vpc.vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.internet-gw.id}"
  }

  tags {
    Network = "Public"
  }
}
