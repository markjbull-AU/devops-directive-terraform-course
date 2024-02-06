terraform {
  cloud {
    organization = "Anchornet"

    workspaces {
      name = "devops-directive-terraform-course"
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
  access_key = "AKIA2CYLMNVBQMI6YGP4"
  secret_key = "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"
}

resource "aws_instance" "anchornet-vm" {
  ami           = "ami-04f5097681773b989" # Ubuntu 22.04 LTS // ap-southeast-2
  instance_type = "t2.micro"
}
