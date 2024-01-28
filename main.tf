provider "aws" {
  region = "us-east-2" // N. Virginia
  assume_role {
    role_arn     = "arn:aws:iam::215502568245:role/MMMAdminRole"
    session_name = "TerraformSession"
  }
}

resource "aws_instance" "exmaple" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-example"
  }
}
