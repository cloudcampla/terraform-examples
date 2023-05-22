variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet"
  type        = string
}

variable "key_pair_name" {
  description = "The name of the key pair to attach to the instance"
  type        = string
}
