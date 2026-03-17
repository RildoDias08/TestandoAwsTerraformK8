variable "project_name" {
  description = "Nome do projeto"
  type = string
}

variable "region" {
  description = "Região da AWS"
  type = string
}

variable "profile" {
    description = "Profile do cli"
    type = string
}

variable "vpc_cidr" {
  type = string
}

variable "myip" {
  type = string
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}