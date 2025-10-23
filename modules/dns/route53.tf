resource "aws_route53_zone" "main" {
  name    = var.domain_name
  comment = "Hosted zone for ${var.domain_name}"
}

resource "aws_route53_record" "alias_root" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "" # apex record
  type    = "A"

  dynamic "alias" {
    for_each = var.alb_dns_name != "" && var.alb_zone_id != "" ? [1] : []
    content {
      name                   = var.alb_dns_name
      zone_id                = var.alb_zone_id
      evaluate_target_health = true
    }
  }
}

resource "aws_route53_record" "alias_www" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "www.${var.domain_name}"
  type    = "A"
  dynamic "alias" {
    for_each = var.alb_dns_name != "" && var.alb_zone_id != "" ? [1] : []
    content {
      name                   = var.alb_dns_name
      zone_id                = var.alb_zone_id
      evaluate_target_health = true
    }
  }
}
