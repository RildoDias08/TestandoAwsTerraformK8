resource "aws_subnet" "public_a" {
  vpc_id            = aws_vpc.app.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "${var.region}a"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_b" {
  vpc_id            = aws_vpc.app.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "${var.region}b"
  map_public_ip_on_launch = true
}

