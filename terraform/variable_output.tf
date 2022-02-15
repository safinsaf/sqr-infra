# Variables to show after the deployment
#########################################

data "aws_caller_identity" "current" {}

output "public_ip" {
  value = aws_instance.sqr_project.public_ip
}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}