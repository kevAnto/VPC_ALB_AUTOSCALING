# Create VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Project = "demo-app"
    Name    = "My Demo VPC"
  }
}
