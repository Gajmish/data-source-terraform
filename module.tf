module "mymodule" {
    source = "./module"
    for_each = var.ec2
    ami = data.aws_ami.app_ami.id
    instance_type = each.value["type"]
    subnet_id = data.aws_subnet.selected[each.key][count.index]
}