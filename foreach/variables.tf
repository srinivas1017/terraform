variable "instance_names" {
  type = map
  default = {
    mongodb  = "t3.small"
    redis    = "t2.micro"
    mysql    = "t3.small"
    rabbitmq = "t2.micro"
    cataloge = "t2.micro"
    cart     = "t2.micro"
    user     = "t2.micro"
    shipping = "t3.small"
    payment  = "t2.micro"
    dispatch = "t2.micro"
    web      = "t2.micro"

  }

}

variable "isProd" {
  type    = bool
  default = true

}

variable "zone_id" {
  default = "sadwq"

}

variable "domain_name" {
  default = "srini.shop"

}

variable "ami_id" {
  default = "ami-03265a0778a880afb"
  
}

