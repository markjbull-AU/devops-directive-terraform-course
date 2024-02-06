# General Variables

variable "region" {
  description = "Default region for provider"
  type        = string
  default     = "ap-southeast-2"
}

# EC2 Variables

variable "ami" {
  description = "Amazon machine image to use for ec2 instance"
  type        = string
  default     = "ami-04f5097681773b989" # Ubuntu 22.04 LTS // ap-southeast-2
}

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}

# S3 Variables

variable "bucket_prefix" {
  description = "prefix of s3 bucket for app data"
  type        = string
}

# Route 53 Variables

variable "domain" {
  description = "Domain for website"
  type        = string
}

# RDS Variables

variable "db_name" {
  description = "Name of DB"
  type        = string
}

variable "db_user" {
  description = "Username for DB"
  type        = string
}

variable "db_pass" {
  description = "Password for DB"
  type        = string
  sensitive   = true
}

# AWS Variables

variable "aws_key" {
  description = "AWS Access Key"
  type        = string
  sensitive   = true
}

variable "aws_secret" {
  description = "AWS Access Key"
  type        = string
  sensitive   = true
}

