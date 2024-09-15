variable "region" {
  default = "us-east-1"
}

variable "my_ip" {
  type = string
  default = "0.0.0.0/0"
}

variable "ssh_rsa" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDr2wFflUBsowkNQLYVInRC/MedK0WWH0xDmKUqCzpCKzc3mfcBlGtFNygU3a6LDD9DkjZG2K+md/QZ2ShieTnj6dvwptpEsnExKj06AXfmaLLg4WFY7SjnpGZU5j1G1N58k885kmWpSTwAFUPPh8MQLqqdsn93hgKLyJM6Ldz/OQ== ubuntu"
}