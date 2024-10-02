variable "instance_names" {
  type = map
  default = {
    mongodb = "t3.small"
    redis = "t2.micro"
    mysql = "t3.small"
   
  }
}

# variable "ami_id" {
#   type        = string
#   default     = "ami-0b4f379183e5706b9"
#  }

variable "zone_id" {
  default = "Z0471036247WT7LPYCTIO"
}

variable "domain_name" {
  default = "ardai.online"
}