locals {
  project_prefix= var.project_name

  vpc_name = "${local.project_prefix}-vpc"
  igw_name = "${local.project_prefix}-igw"
  rt_name = "${local.project_prefix}-public-rt"
  repo_name = "${local.project_prefix}-repo"
  cluster_name = "${local.project_prefix}-cluster"
  rds_name = "${local.project_prefix}-rds"
}