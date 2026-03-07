resource "aws_ecr_repository" "meuapp" {
	name="meuapp-repo"

	image_scanning_configuration {
	  scan_on_push = true
  }
}
