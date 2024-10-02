 variable "instance_names" {
    type = list
    default = ["mongodb","redis","mysql","rabbitmq","catalougue","user","cart","shipping","payment","dispatch","web"]
}
variable "ami_id" {
  type        = string
  default     = "ami-0b4f379183e5706b9"
 }

variable "zone_id" {
  default = "Z0471036247WT7LPYCTIO"
}

variable "domain_name" {
  default = "ardai.online"
}