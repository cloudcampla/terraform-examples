variable "key_pair_name" {
  description = "The name of the key pair to attach to the instance"
  type        = string
}

variable "cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}