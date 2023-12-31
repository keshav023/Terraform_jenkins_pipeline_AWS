provider "aws" {
    region = "ap-south-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-0f5ee92e2d63afc18" # ap-south
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "terraform-example-bucket123" 
  acl    = "private"
}