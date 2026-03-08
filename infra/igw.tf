resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.app.id

  tags = {
    Name = local.igw_name
  }
}