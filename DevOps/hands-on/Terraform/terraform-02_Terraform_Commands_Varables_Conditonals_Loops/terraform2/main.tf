provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}
locals {
  mytag = "fatal-local-name"
}
resource "aws_instance" "tf-ec2" {
  #ami           = "ami-0ed9277fb7eb570c9"
  ami           = var.ec2_ami
  instance_type = var.ec2_type
  key_name      = "FatalSecKey" # write your pem file without .pem extension>
  tags = {
    #Name = "tf-ec2"
    Name = "${var.ec2_name}-instance"
  }
}

resource "aws_s3_bucket" "tf-s3" {
  #bucket = "fatal-tf-test-bucket-addwhateveryouwant"
  bucket = var.s3_bucket_name
  tags = {Name = "${local.mytag}-come from locals"}
}


output "tf_example_s3_meta" {
  value = aws_s3_bucket.tf-s3.region
}

output "tf_example_public_ip" {
  value = aws_instance.tf-ec2.public_ip
}