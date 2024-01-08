# declaring variable 
variable "sample" {
    default = "hello world"
}

#printing variable
output "op" {
    value =  var.sample
}

#wenever you want to print the variable in the group of words, you need to use the Bash ayntax:
output "ops" {
    value = "my first msg is ${var.sample}"
}