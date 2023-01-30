provider "aws"{
    region="us-west-2"
}

resource "aws_instance" "server" {
  ami           = "ami-095413544ce52437d"
  instance_type = "t2.micro"
  subnet_id="subnet-0e12930bf6bfb0b0d"
  security_groups=["sg-0a20361b56c6c324a"]
  


  tags = {
    Name = "terraform-server"
  }
}
