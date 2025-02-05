variable "location" {
  description = "Cluster location."
  type        = string
  default     = "us-central1-a"
}
variable "node_locations" {
  description = "node_locations."
  type        = string
  default     = "us-central1-b"
}

variable "vpc_name" {
  description = "The GCP region where the resources will be created."
  type        = string
}

variable "region" {
  description = "The GCP region where the resources will be created."
  type        = string
}

variable "project_id" {
  description = "The GCP project ID."
  type        = string
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

