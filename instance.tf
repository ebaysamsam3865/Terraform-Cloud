provider "aws" {
  region = "us-east-1"
  access_key=var.AWS_ACCESS_KEY
  secret_key=var.AWS_SECRET_KEY 
}

resource "aws_instance" "web" {
  ami           = "ami-0dc2d3e4c0f9ebd18"
  instance_type = "t2.micro"

  tags = {
    Name = "SudhakarWorld"
  }
}
