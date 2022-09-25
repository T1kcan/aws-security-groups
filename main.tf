resource "aws_security_group" "sec-gr" {
  name = var.sg-name
  description = var.sg_description
  tags = {
    Name = var.sg-tag_name
  }
  dynamic "ingress" {
    for_each = var.sg-ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = var.protocol
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
