provider "aws" {
  region = "us-east-1"
}

import {
  to = aws_security_group.securitygroup
  id = ""
}