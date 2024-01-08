# declaring variable 
variable "prem" {
    default = "hello world"
}

#printing variable
output "op" {
    value =  var.prem
}

#wenever you want to print the variable in the group of words, you need to use the Bash ayntax:
output "ops" {
    value = "my first msg is ${var.prem}"
}