resource "aws_instance" "test-instance-east-1" {
  provider      = aws.east-1
  ami           = var.ami_id_1
  instance_type = var.instance_type
  tags = {
    Name = var.name
    env  = var.env
  }
  count = var.icount
}

resource "aws_instance" "test-instance-east-2" {
  provider      = aws.east-2
  ami           = var.ami_id_2
  instance_type = var.instance_type
  tags = {
    Name = var.name
    env  = var.env
  }
  count = var.icount
}

output "multi-region-outputs" {
  value = [aws_instance.test-instance-east-1[*].public_ip, aws_instance.test-instance-east-2[*].public_ip]
}
