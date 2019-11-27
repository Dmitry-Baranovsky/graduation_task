provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jenkins" {
  ami           = "ami-091e3fae178527fb8"
  instance_type = "t2.micro"
  key_name      = "graduation_work"
  tags = {
    Name = "Jenkins"
  }
}

resource "aws_instance" "docker2" {
  ami           = "ami-0ee22ce00800c268d"
  instance_type = "t2.micro"
  key_name      = "graduation_work"
  tags = {
    Name = "Docker2"
  }
}

resource "aws_instance" "docker1" {
  ami           = "ami-0ee22ce00800c268d"
  instance_type = "t2.micro"
  key_name      = "graduation_work"
  tags = {
    Name = "Docker1"
  }
}
