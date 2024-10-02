resource "aws_instance" "web" {
  #count = 11 # count.index is a special variable given by terraform
  count = length(var.instance_names) 
  ami           = var.ami_id #devops-practice
  instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" || var.instance_names[count.index] == "shipping" ? "t3.small" : "t2.micro"
  tags = {
    Name = var.instance_names[count.index] # to get respective names for all servers ex, mongodb, web,mysql, etc.
  }
}

resource "aws_route53_record" "www" {
  # count = 11
  count = length(var.instance_names)
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain_name}" #interpolation
  type    = "A"
  ttl     = 1
  records = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip] # it is condition: pubilc ip for Web sever and private ip for rest of the servers
}