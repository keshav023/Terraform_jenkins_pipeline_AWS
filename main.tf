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

resource "aws_s3_bucket" "my_bucket" {

  bucket = "terraform_s3_bucket_Testing123"  
 

}