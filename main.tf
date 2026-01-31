locals {
  region        = "us-east-1"
  instance_type = "t2.micro"
}

resource "aws_instance" "example" {
  ami           = "ami-0532be01f26a3de55"
  instance_type = local.instance_type
  tags = {
    Name = "App-${local.region}"
  }
}
