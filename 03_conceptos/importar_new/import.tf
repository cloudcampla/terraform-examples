provider "aws" {
  region = "us-east-1"
}

import {
  to = aws_security_group.securitygroup
  id = "sg-0543e7ad05c477b1f"
}