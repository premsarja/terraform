# declaring variable 

variable "sample" {
    default = "hello world"
}

#printing variable
output "op" {
    value =  var.sample
}