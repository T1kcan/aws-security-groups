output "sg-arn" {
    description = "Security Group ARN"
    value = aws_security_group.sec-gr.arn
}

output "sg-id" {
    description = "Security Group ID"
    value = aws_security_group.sec-gr.id
}