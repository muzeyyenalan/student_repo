terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.10.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test" {
  ami             = "ami-03ededff12e34e59e"
  instance_type   = "t2.micro"
  tags = {
    Name = "tektek"
  }
  key_name = "FatalSecKey"
}