resource "aws_security_group" "ecs_ec2" {
  name = "${local.project_prefix}-ec2s-sg"
  description = "Security group da EC2/ECS"
  vpc_id = aws_vpc.app.id

 # ingress {
 #   from_port = 3002
 #   to_port = 3002
 #   protocol = "tcp" 
 #   cidr_blocks = [var.myip]
 #    security_groups = "alb quando criar"
    
 # }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Nome = "${local.project_prefix}-ec2s-sg"
  }
}

resource "aws_security_group" "rds" {
  name = "${local.project_prefix}-rds-sg"
  description = "Security group do RDS"
  vpc_id = aws_vpc.app.id

  ingress {
    from_port = 5432
    to_port = 5432
    protocol = "tcp"
    security_groups = [ aws_security_group.ecs_ec2.id ]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Nome = "${local.project_prefix}-rds-sg"
  }
}