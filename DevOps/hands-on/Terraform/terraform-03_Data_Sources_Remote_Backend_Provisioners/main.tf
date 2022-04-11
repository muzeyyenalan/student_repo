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
  backend "s3" {
    bucket = "tf-remote-s3-bucket-fatal"
    key = "env/dev/tf-remote-backend.tfstate"
    region = "us-east-1"
    dynamodb_table = "tf-s3-app-lock"
    encrypt = true
  }
}


locals {
  mytag = "fatal-local-name"
}
resource "aws_instance" "tf-ec2" {
  #ami           = "ami-0ed9277fb7eb570c9"
  ami           = data.aws_ami.tf_ami.id
  instance_type = var.ec2_type
  key_name      = "FatalSecKey" # write your pem file without .pem extension>
  tags = {
    #Name = "tf-ec2"
    Name = "${var.ec2_name}-instance"
  }
}
data "aws_ami" "tf_ami" {
  most_recent      = true
  owners           = ["self"]

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
}
#resource "aws_s3_bucket" "tf-s3" {
  #bucket = "fatal-tf-test-bucket-addwhateveryouwant"
#  bucket = var.s3_bucket_name
#  tags = {Name = "${local.mytag}-come from locals"}
#}


#output "tf_example_s3_meta" {
#  value = aws_s3_bucket.tf-s3.region
#}

output "tf_example_public_ip" {
  value = aws_instance.tf-ec2.public_ip
}

output "test" {
  value = aws_instance.tf-ec2.id
}