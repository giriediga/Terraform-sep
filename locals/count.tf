resource "aws_instance" "web" {
  #count = 11 # count.index is a special variable given by terraform
  #count = length(var.instance_names) 
  ami           = var.ami_id #devops-practice
  instance_type = local.instance_type
  tags = {

  Name = "locals"
}
}