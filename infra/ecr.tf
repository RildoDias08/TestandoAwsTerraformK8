resource "aws_ecr_repository" "repo" {
	name=local.repo_name

	image_scanning_configuration {
	  scan_on_push = true
  }
}
