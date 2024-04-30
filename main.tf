provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "db" {
  allocated_storage    = 2
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "13.4"
  instance_class       = "db.t2.micro"
  name                 = "postgres-db"
  username             = "postgres"
  password             = "postgres"
  parameter_group_name = "default.postgres13"

  tags = {
    Name = "postgres-db"
  }
}