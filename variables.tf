variable "sg-name" {
  type    = string
  default = "roboshop-all-aws"

}

variable "sg-description" {
  type    = string
  default = "Allow TLS inbound traffic"

}

variable "inbound-from_port" {
  #type    = string
  default = 0

}

variable "cidr_blocks" {
  type    = list(any)
  default = ["0.0.0.0/0"]

}
