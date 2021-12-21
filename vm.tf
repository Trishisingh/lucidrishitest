resource "aws_network_interface" "main" {
  count     = var.vm_count
  subnet_id = aws_subnet.private[0].id
  

  tags = {
    Name = "primary_network_interface"
  }
}


resource "aws_instance" "main" {
  count                  = var.vm_count
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.ec2.id]
  subnet_id              = aws_subnet.private[0].id



}