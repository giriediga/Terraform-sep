resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
   vpc_security_group_ids = [aws_security_group.giri-all.id]
  
  tags = {
    Name = "Hello terraform"
  }
}

resource "aws_security_group" "giri-all" { # this name giri-all is for terrafrom
    name        = "giri-all" # this name giri-all-aws is for aws SG name.
  description = "Allow TLS inbound traffic and all outbound traffic"
  # vpc_id      = aws_vpc.main.id
 
# resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv6" 

ingress {
  description = "Allow all ports"
  from_port         = 0 #this is for all ports
  protocol       = "tcp"
  to_port           = 0
  cidr_blocks = ["0.0.0.0/0"]
  # cidr_ipv6         = aws_vpc.main.ipv6_cidr_block
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "giri-tags-aws"
  }
}


