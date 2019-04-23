resource "aws_ecr_repository" "sample-image" {
  name = "sample-image"
}

resource "aws_ecr_repository" "django-docker" {
  name = "django-docker"
}