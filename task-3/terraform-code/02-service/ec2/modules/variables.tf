variable "ami_id" {
  description = "The AMI ID for the EC2 instance."
  type        = string
  default     = ""

}

variable "instance_type" {
  description = "The type of the instance."
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance into."
  type        = string
}

variable "sg_id" {
  description = "The security group name to attach to the instance."
  type        = string
}

variable "key_name" {
  type = string
}

variable "server_name" {
  type = string
}