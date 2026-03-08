resource "aws_vpc" "app" {
	cidr_block = var.vpc_cidr

	tags = {
	  Name = local.vpc_name
  }
}