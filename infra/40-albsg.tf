resource "aws_security_group" "alb" {
  name = "skills-alb-sg"
  vpc_id = aws_vpc.main.id

  ingress {
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = "0"
    to_port = "0"
  }

  egress {
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = "0"
    to_port = "0"
  }

  lifecycle {
    ignore_changes = [ingress, egress]
  }
}
