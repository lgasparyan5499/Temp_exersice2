
variable "instance-type" {
  description = "EC2 instance type"
  type        = string
}

variable "tag_name" {
  description = "EC2 Name"
  type        = string
}

variable "tag_name_vpc" {
  description = "My VPC"
  type = string
}
variable "tag_name_subnets" {
  description = "Subnet Name"
  type        = string
 }
variable "tag_name_ig" {
  description = "IG Name"
  type        = string
}
variable "tag_name_rt_public" {
  description = "RT Public Subnet Name-"
  type        = string
 }
 variable "tag_name_sg" {
  description = "SG Name"
  type        = string
 }