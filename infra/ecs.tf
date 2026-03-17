resource "aws_ecs_cluster" "meuapp" {
    name = local.cluster_name
}