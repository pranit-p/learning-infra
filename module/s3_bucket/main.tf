

resource "aws_db_instance" "first-rds" {
  allocated_storage   = var.size_of_database
  engine              = var.engine_for_database
  engine_version      = var.engine_version
  instance_class      = var.instance_class
  name                = var.name
  username            = var.username
  password            = var.password
  skip_final_snapshot = var.skip_final_snapshot
}