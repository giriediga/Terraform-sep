resource "aws_security_group" "giri-all" { # this name giri-all is for terrafrom
    name        = var.sg-name # this name giri-all-aws is for aws SG name.
    description = var.sg-description
  # vpc_id      = aws_vpc.main.id

# resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv6" 

ingress {
  description = "Allow all ports"
  from_port         = var.inbound-from-port #this is for all ports
  protocol       = "tcp"
  to_port           = 0
  cidr_blocks = var.cidr_blocks
  # cidr_ipv6         = aws_vpc.main.ipv6_cidr_block
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}