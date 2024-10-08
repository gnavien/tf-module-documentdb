resource "aws_docdb_subnet_group" "default" {
  name       = "${var.component}-${var.env}"
  subnet_ids = var.subnet_ids

  tags       = merge({ Name = "${var.component}-${var.env}" }, var.tags)
}


resource "aws_docdb_cluster" "docdb" {
  cluster_identifier      = "my-docdb-cluster"
  engine                  = "docdb"
  master_username         = "foo"
  master_password         = "mustbeeightchars"
  backup_retention_period = 5
  skip_final_snapshot     = true
}



