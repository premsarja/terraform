variable "prem" {
  default = "hello world"
}

output "op" {
  value = var.prem
}

output "ops1" {
  value = "welcome to the ${var.prem}"
}