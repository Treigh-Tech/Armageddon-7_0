# Explanation: Outputs are your mission report—what got built and where to find it.
output "knights7_vpc_id" {
  value = aws_vpc.knights7_vpc01.id
}

output "knights7_public_subnet_ids" {
  value = aws_subnet.knights7_public_subnets[*].id
}

output "knights7_private_subnet_ids" {
  value = aws_subnet.knights7_private_subnets[*].id
}

output "knights7_ec2_instance_id" {
  value = aws_instance.knights7_ec201.id
}

output "knights7_rds_endpoint" {
  value = aws_db_instance.knights7_rds01.address
}

output "knights7_sns_topic_arn" {
  value = aws_sns_topic.knights7_sns_topic01.arn
}

output "knights7_log_group_name" {
  value = aws_cloudwatch_log_group.knights7_log_group01.name
}
