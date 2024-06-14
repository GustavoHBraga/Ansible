variable "regiao_aws" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "instancia" {
  description = "Name of the instancia - T3-micro, T2-micro, T1-micro, T0-micro"
  type        = string
  default     = "t2.micro"
}

variable "chave" {
  description = "Name of chave ssh key"
  type        = string
}

variable "count_instances" {
    description = "Number of instances to create"
    type        = number
    default     = 1
}