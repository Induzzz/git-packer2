variable "project_name" {
  type    = string
  default = "shopping"
}

variable "environment" {
  type    = string
  default = "production"
}

variable "base_ami_id" {
  default = "ami-0d03cb826412c6b0f"
}

locals {
  image_timestamp = formatdate("DD-MM-YYYY-hh-mm", timestamp())
  ami_name        = "${var.project_name}-${var.environment}-${local.image_timestamp}"
}
