variable "ami_id" {
  type    = string
  default = "ami-081609eef2e3cc958"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"

}
variable "instance_name" {
  type = string
  default = "mongodb"
  
}


variable "tags" {
  type = map(any)
  default = {
    Name        = "Lab26-D-Pract"
    Project     = "Roboshop"
    Environment = "DEV"
    Component   = "Web"
    Terraform   = true
  }

}
# security group starts here

variable "sg-name" {
  type    = string
  default = "roboshop-all"

}

variable "description" {
  type    = string
  default = "allow TLS inbound traffic"

}

variable "inbound-from-port" {
  default = 0

}

variable "cidr_blocks" {

  default = ["0.0.0.0/0"]

}
