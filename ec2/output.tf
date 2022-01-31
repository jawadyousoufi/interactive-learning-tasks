output "availabilty_zone" {
    value       = aws_instance.web.availability_zone
  }
output "public_ip" {
    value       = aws_instance.web.public_ip
  }
output "ami" {
    value       = aws_instance.web.ami
  }
output "aws_region" {
    value       = data.aws_region.web.name
}