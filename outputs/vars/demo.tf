variable "prem" {
  default = "hello world"
}

output "op" {
  value = var.prem
}

output "ops1" {
  value = "welcome to the ${var.prem}"
}

variable "sagar" {
  default = [   
    "my",
    "country",
    "india",
  ]
}

output "op2" {
  value = "i am ${var.sagar[0]} i m in ${var.sagar[1]} my country is ${var.sagar[2]}"
}

output "op3" {
    value = "${var.prem} "
  
}

variable "map" {
  default = {
    name = "prem",
    age = 50,
    gender = "male",
  }
}

output "op4" {
  value = "my  name is ${var.map.name} and my age is ${var.map.age} and my gender is ${var.map.gender}"
}