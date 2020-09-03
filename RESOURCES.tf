provider "aws" {
  region = "us-east-1"
}

resource "aws_rds_cluster" "default" {
  cluster_identifier      = "aurora-cluster-demo"
  engine                  = "aurora-mysql"
  engine_version          = "5.7.mysql_aurora.2.03.2"
  database_name           = "mydb"
  master_username         = "foo"
  master_password         = "Mypassword123"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
}

resource "aws_s3_bucket" "saidgarciamorales" {
  bucket = "saidgarciamoralest"
  acl    = "private"
  versioning {
    enabled = true
  }

  tags = {
    Name        = "saidgarciamorales"
    Environment = "Dev"
  }
}
