resource "aws_instance" "aws" {
  ami           = var.ami_id
  instance_type = var.instance_name == "mongodb" ? "t3.small" : "t2.micro"

}
