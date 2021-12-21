variable "name" {
  type        = string
  default     = "lucid-code-test"
  description = "Root name for resources in this project"
}

variable "vpc_cidr" {
  default     = "10.1.0.0/16"
  type        = string
  description = "VPC cidr block"
}

variable "newbits" {
  default     = 8
  type        = number
  description = "How many bits to extend the VPC cidr block by for each subnet"
}

variable "public_subnet_count" {
  default     = 1
  type        = number
  description = "How many subnets to create"
}

variable "private_subnet_count" {
  default     = 3
  type        = number
  description = "How many private subnets to create"
}

variable "ami" {
  default     = "ami-0b28dfc7adc325ef4"
  type        = string
  description = "ami image name"
}
variable "instance_type" {
  default     = "t2.micro"
  type        = string
  description = "instance type for ec2"
}


variable "dbversion" {
  default     = "5.7"
  type        = string
  description = "version of db engine"
}

variable "instance_class" {
  default     = "db.t3.micro"
  type        = string
  description = "db instance size"
}

variable "vm_count" {
  default     = 2
  type        = number
  description = "How many subnets to create"
}

variable "dbname" {
  default     = "mydb"
  type        = string
  description = "db name"
}

variable "username" {
  default     = "dbadmin"
  type        = string
  description = "db sa usename"
}

variable "password" {
  default     = "password123456"
  type        = string
  description = "db sa password "
}