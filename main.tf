provider "aws" {
  region  = "ap-northeast-1"
}

module "web_server" {
  source = "./http_server"
  instance_type = "t2.micro"
}

output "public_dns" {
  value = module.web_server.public_dns
}