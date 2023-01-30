provider "aws"{
    region="us-west-2"
}

resource "aws_instance" "server" {
  ami           = "ami-06e85d4c3149db26a"
  instance_type = "t2.micro"
  subnet_id="subnet-0e12930bf6bfb0b0d"
  security_groups=["sg-086b130f73f065639"]
  


  tags = {
    Name = "terraform-server"
  }
}
