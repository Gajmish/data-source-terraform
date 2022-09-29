data "aws_ami" "app_ami" {
  most_recent = true
  filter {
    name   = "name"
    values = ["windows-*"]
  }
}
data "aws_vpc" "selected" {
  tags = {
    Name = "my-vpc"
  }
}
data "aws_subnets" "selected" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id]
  }
}
data "aws_subnet" "selected" {
  for_each = toset(data.aws_subnets.selected.ids)
   id      = each.value
}