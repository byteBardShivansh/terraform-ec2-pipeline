provider "aws" {
  region = "us-east-1"  # Specify the AWS region where you want to deploy your instance
}

resource "aws_instance" "web-instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI ID (update for your region)
  instance_type = "t2.micro"               # EC2 instance type

  tags = {
    Name = "Nginx-Instance"
  }
}