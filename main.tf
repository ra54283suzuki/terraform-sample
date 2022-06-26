resource "aws_instance" "example" {
  ami = "ami-0b7546e839d7ace12"
  instance_type = "t2.micro"
  
  user_data = <<EOF
    #!/bin/bash
    yum install -y httpd
    systemctl start httpd.service
  EOF
}