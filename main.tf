provider "aws" {
  region = "us-east-1"
}
resource "aws_lightsail_instance" "server" {
    name = "server"
    blueprint_id = "centos_stream_9"
    bundle_id = "small_1_0"
    availability_zone = "us-east-1a"
    tags = {
      name="server"
      env="dev"
    }
}

output "server_name" {
    value = aws_lightsail_instance.server.name
}
output "az" {
    value = aws_lightsail_instance.server.availability_zone
}
output "pip" {
    value = aws_lightsail_instance.server.public_ip_address
  
}