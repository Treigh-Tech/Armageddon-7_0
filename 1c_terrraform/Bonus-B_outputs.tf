# Explanation: Outputs are the mission coordinates — where to point your browser and your blasters.
output "knights7_alb_dns_name" {
  value = aws_lb.knights7_alb01.dns_name
}

output "knights7_app_fqdn" {
  value = "${var.app_subdomain}.${var.domain_name}"
}

output "knights7_target_group_arn" {
  value = aws_lb_target_group.knights7_tg01.arn
}

output "knights7_acm_cert_arn" {
  value = aws_acm_certificate.knights7_acm_cert01.arn
}

output "knights7_waf_arn" {
  value = var.enable_waf ? aws_wafv2_web_acl.knights7_waf01[0].arn : null
}

output "knights7_dashboard_name" {
  value = aws_cloudwatch_dashboard.knights7_dashboard01.dashboard_name
}
