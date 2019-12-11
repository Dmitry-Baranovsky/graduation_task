provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jenkins" {
  ami           = "ami-0362278b9e56d43bf"
  instance_type = "t2.micro"
  iam_instance_profile = "graduation_work"
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

resource "aws_ecr_repository" "docker_d" {
  name                 = "docker_d"
  image_tag_mutability = "MUTABLE"
}
