provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jenkins" {
  ami           = "ami-070b88e79233cdfa0"
  instance_type = "t2.micro"
  iam_instance_profile = "graduation_work"
  key_name      = "graduation_work"
  tags = {
    Name = "Jenkins"
  }
}

resource "aws_instance" "qa" {
  ami           = "ami-0ee22ce00800c268d"
  instance_type = "t2.micro"
  key_name      = "graduation_work"
  tags = {
    Name = "QA"
  }
}

resource "aws_instance" "ci" {
  ami           = "ami-0ee22ce00800c268d"
  instance_type = "t2.micro"
  key_name      = "graduation_work"
  tags = {
    Name = "CI"
  }
}
