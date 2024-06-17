# main.tf

# Specify the provider
provider "aws" {
  region = "us-east-1" # Specify your region
}

# Create a key pair (optional, only if you need SSH access)
resource "aws_key_pair" "my_key" {
  key_name   = "my-key"
  public_key = file("~/.ssh/id_rsa.pub") # Path to your public key
}

# Create a security group
resource "aws_security_group" "my_sg" {
  name        = "my-sg"
  description = "Allow SSH and HTTP traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow SSH from anywhere, restrict as needed
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow HTTP from anywhere, restrict as needed
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # Allow all outbound traffic
  }
}

# Create an EC2 instance
resource "aws_instance" "my_instance" {
  ami             = "ami-08a0d1e16fc3f61ea" # Specify your AMI ID
  instance_type   = "t2.micro"             # Specify instance type
  key_name        = aws_key_pair.my_key.key_name # Reference to key pair
  security_groups = [aws_security_group.my_sg.name] # Reference to security group

  tags = {
    Name = "terraformFirstC2Instance"
  }
}