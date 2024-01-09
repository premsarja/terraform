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

#declaring a list variable
variable "sample_list" {
    default = [
        "devops",
        10,
        "prems"
    ]
}

output "name" {
    value = var.sample_list[0]
  
}

output "crow" {
    value = "welcome to ${var.sample_list[0]} testing the numb ${var.sample_list[1]}"
  
}

#declaring map variable

variable "sample_map" {
    default = {
        batch = "b55"
        mode = "online"
        training = "devopswithcloud"
    } 
}

output "name" {
    value = var.sample_map
  
}