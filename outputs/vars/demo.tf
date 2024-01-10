variable "prem" {
  default = "hello world"
}

output "op" {
  value = var.prem
}

output "op" {
  value = "welcome to the ${var.prem}"
}