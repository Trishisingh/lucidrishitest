/*resource "aws_security_group" "default" {
  name = "rds_sg"

  ingress {
    cidr = aws_subnet.private[0].cidr_block
  }

}
*/
resource "aws_db_subnet_group" "dbsubnet" {
  name       = "dbsubnet"
  subnet_ids = [aws_subnet.private[1].id, aws_subnet.private[2].id]

  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "default" {
  allocated_storage      = 10
  engine                 = "mysql"
  engine_version         = var.dbversion
  instance_class         = var.instance_class
  name                   = var.dbname
  username               = var.username
  password               = var.password
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.dbsubnet.name
  vpc_security_group_ids = [aws_security_group.mydb.id]

}