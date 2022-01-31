data "aws_region" "web" { }
data "aws_route53_zone" "web" { 
    name    = "wordpress.awsjawad.com"
    # type    = "CNAME"
}

resource "aws_instance" "web" {
  ami           = "ami-ae6272b8"
  instance_type = "t2.micro"


  user_data = <<-EOF
#!/bin/bash
sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl status apache2
sudo systemctl enable apache2
EOF
}

resource "aws_route53_record" "web" {
  zone_id = data.aws_route53_zone.web.zone_id
  name    = "wordpress.awsjawad.com"
  type    = "CNAME"
  ttl     = "300"
}

