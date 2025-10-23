variable "domain_name" {
  description = "The domain name for the hosted zone"
  type        = string
}

variable "alb_dns_name" {
  description = "Optional ALB DNS name to create alias records against"
  type        = string
  default     = ""
}

variable "alb_zone_id" {
  description = "Optional ALB zone id to create alias records against"
  type        = string
  default     = ""
}
