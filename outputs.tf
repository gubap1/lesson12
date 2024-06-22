output "s3_id" {
  description = "The ID of the S3 bucket"
  value       = aws_s3_bucket.lesson12_s3.id
}

output "ec2_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.lesson12_ec2.id
}
