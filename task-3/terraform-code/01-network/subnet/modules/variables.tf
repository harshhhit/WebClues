variable "availability_zones" {
  type        = string
}

variable "public_cidr" {
  description = "CIDR block for the subnet"
  type        = string
 
}
variable "vpc_id" {
  type        = string 
}