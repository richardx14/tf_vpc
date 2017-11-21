variable "region" {
  description = "The AWS region."
  default     = "eu-west-2"
}

variable "key_name" {
  description = "The AWS key pair to use for resources."
  default     = "docker-riemann"
}

variable "ami" {
  type        = "map"
  description = "A map of AMIs."
  default     = {}
}

variable "instance_type" {
  description = "The instance type."
  default     = "t2.micro"
}

variable "instance_ips" {
  description = "IP's to use for our instances"
  default     = ["10.0.1.20", "10.0.1.21"]
}

variable "key_path" {
  default = "/home/ubuntu/.ssh/richard_aws"
}
