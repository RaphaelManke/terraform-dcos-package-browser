resource "aws_subnet" "vpc" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.vpc_subnet_range}"

  tags {
    Network = "Master"
  }
}
