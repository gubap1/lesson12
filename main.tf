terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "aws" {
  region = "eu-central-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_s3_bucket" "lesson12_s3" {
  bucket = "devops-training-12-3" # Change this to a globally unique name

  tags = {
    Name        = "Lesson12_3"
    Environment = "Learning"
  }
}

resource "aws_s3_bucket_ownership_controls" "lesson12_s3_owner" {
  bucket = aws_s3_bucket.lesson12_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "lesson12_s3_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.lesson12_s3_owner]

  bucket = aws_s3_bucket.lesson12_s3.id
  acl    = "private"
}

resource "aws_instance" "lesson12_ec2" {
  ami               = "ami-00cf59bc9978eb266" # Amazon Linux 2023 AMI (64-bit (x96), uefi)
  instance_type     = "t2.micro"
  key_name          = var.aws_ssh_key_name

  tags = {
    Name = "lesson12_ec2"
    Environment = "Learning"
  }
}
