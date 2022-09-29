variable "ec2" {
  type = map(object({
    type = string
  }))
 default = {
  "webapp1" = {
    type = "t2.micro"
   }
  "webapp2" = {
    type = "t2.micro"
   }
 }
}