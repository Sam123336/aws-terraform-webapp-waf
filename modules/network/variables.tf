variable "domain_name" {
  description = "The domain name for the application."
  type        = string
  default     = "example.com"

}
variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_a_cidrs" {
  description = "CIDR block for public subnet A."
  type        = string
  default     = "12.0.1.0/24"
}

variable "public_subnet_b_cidrs" {
  description = "CIDR block for public subnet B."
  type        = string
  default     = "12.0.2.0/24"
}