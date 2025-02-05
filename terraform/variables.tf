variable "project_id" {
  description = "Name of the project"
  type        = string
  default     = "proud-storm-444720-m9"
}

variable "vpc_name" {
  description = "name of VPC"
  type        = string
  default     = "fastapi-vpc"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet."
  type        = string
  default     = "10.0.2.0/24"
}

variable "region" {
  description = "The GCP region where the resources will be created."
  type        = string
  default     = "us-central1"
}
