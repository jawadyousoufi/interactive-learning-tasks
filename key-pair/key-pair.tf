data "aws_region" "deployer" { }
resource "aws_key_pair" "deployer" {
  key_name   = "ilearning-wordpress"
  public_key = file("~/.ssh/id_rsa.pub")
}