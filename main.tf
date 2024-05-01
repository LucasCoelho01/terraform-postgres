resource "aws_db_instance" "postgresdb" {
  allocated_storage    = 10
  db_name              = "postgresdb"
  engine               = "postgres"
  engine_version       = "15"
  instance_class       = "db.t3.micro"
  username             = "postgres"
  password             = "postgres"
  parameter_group_name = "default.postgres15"
  skip_final_snapshot  = true
}