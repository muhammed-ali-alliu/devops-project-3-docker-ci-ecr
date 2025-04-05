resource "aws_ecr_repository" "my_repo" {
  name = var.ecr_repo_name

  image_tag_mutability = "MUTABLE"

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Name        = var.ecr_repo_name
    Environment = "Dev"
  }
}
