variable "app_name" {
  description = "The name of the application"
  default = "my_app"
}

variable "node_ami" {
  # Only support Ubuntu AMI for now
  description = "AMI for the node instances"
  default = "ami-003c463c8207b4dfa"
}

variable "node_instance_type" {
  description = "Instance type"
  default = "t3.micro"
}

variable "worker_instance_number" {
  description = "Number of worker instances"
  default = 2
}


variable "vpc_cidr" {
  # please consider to update VPC module in vpc.tf if you change the subnet mask that is different from /16
  description = "CIDR block for the VPC"
  default = "10.21.0.0/16"
}

variable "tags" {
  description = "tags for the resources"
  default = {
    Project = "swarm"
  }
}

variable "region" {
  description = "AWS region"
  default = "ap-southeast-1"
}
