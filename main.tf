
provider "aws" {
  region = "eu-central-1"
  
  
}

variable "cidr_blocks" {
  description = "cidr blocks and name tags for vpc and subnets"  
  
  type = list(object({
    cidr_block = string
    name = string
  }))
}
variable "avail_zone" {
}



resource "aws_vpc" "development-vpc" {
  cidr_block = var.cidr_blocks[0].cidr_block
  tags = {
    Name = "development",
   
  } 
  
}

resource "aws_subnet" "dev-subnet-1" {
  vpc_id = aws_vpc.development-vpc.id
  cidr_block = var.cidr_blocks[1].cidr_block
  availability_zone =var.avail_zone
  tags = {
    Name = "subnet-1-dev"
  }
  
}

data "aws_vpc" "existing-vpc" {
  default = true
  
}
resource "aws_subnet" "dev-subnet-2" {
  vpc_id = data.aws_vpc.existing-vpc.id
  cidr_block = "172.31.48.0/20"
  availability_zone = "eu-central-1a"
    tags = {
    Name = "subnet-2-default"
  }
  
}

