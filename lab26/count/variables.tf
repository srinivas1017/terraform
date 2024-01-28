variable "instances_names" {
  type    = list(any)
  default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "dispatch", "web"]

}

variable "ami_id" {
  type    = string
  default = "ami-081609eef2e3cc958"

}

variable "zone_id" {

  default = "Z07923431JFAGJ1WC0SC5"
}
variable "domain_name" {
  default = "srini.shop"

}
