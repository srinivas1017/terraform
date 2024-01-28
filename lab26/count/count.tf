#count based loops
#foreach loop
#create instances and update Route53 records

resource "aws_instance" "web" {
  count         = length(var.instances_names)
  ami           = var.ami_id
  instance_type = var.instances_names[count.index] == "mongodb" || var.instances_names[count.index] == "mysql" || var.instances_names[count.index] == "shipping" ? "t3.small" : "t2.micro"
  tags = {
    Name = var.instances_names[count.index]
  }

}

resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  count   = length(var.instances_names)
  name    = "${var.instances_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [var.instances_names[count.index] == "web" ? aws_instance.web[count.index].public_ip :
  aws_instance.web[count.index].private_ip]

}
