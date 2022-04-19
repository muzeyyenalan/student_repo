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

resource "aws_instance" "tf-ec2" {
  ami           = "ami-03ededff12e34e59e"
  instance_type = "t2.micro"
  key_name      = "FatalSecKey"

}

resource "aws_s3_bucket" "bucketttt" {
  bucket = "fatal-tf-bucket-testb"

}

output "bucket_name" {
    value = aws_s3_bucket.bucketttt.id
  
}
output "instance_public_ip" {
    value = aws_instance.tf-ec2.public_ip
  
}