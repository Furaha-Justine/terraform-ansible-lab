variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Prefix used for all resource names"
  type        = string
  default     = "webapp-lab"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name for the AWS key pair and local .pem file"
  type        = string
  default     = "webapp-lab-key"
}

variable "ssh_user" {
  description = "Default SSH user for Amazon Linux 2"
  type        = string
  default     = "ec2-user"
}