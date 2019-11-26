provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jenkins" {
  ami           = "ami-0e16cbe94cf58db11"
  instance_type = "t2.micro"
  key_name      = "graduation_work"
  tags = {
    Name = "Jenkins"
  }
}
