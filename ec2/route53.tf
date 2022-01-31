# resource "aws_route53_zone" "web" {
#     name = "wordpress.awsjawad.com"
#     records = "aws_route53_zone.wordpress.awsjawad.com"
# }

# resource "aws_route53_record" "web" {
#   zone_id = aws_route53_zone.web.zone_id
#   name    = "wordpress.awsjawad.com"
#   type    = "A"
#   ttl     = "300"
#   records = [aws_instance.web.public_ip]
# }
