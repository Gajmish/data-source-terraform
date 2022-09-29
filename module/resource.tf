resource "aws_instance" "app" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
}

variable "ami" {}
variable "instance_type" {}
variable "subnet_id" {}