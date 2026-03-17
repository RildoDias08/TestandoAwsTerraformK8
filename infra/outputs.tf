output "sg_id_ec2" {
    description = "id do sg_ec2"
    value = [aws_security_group.ecs_ec2.id]
}