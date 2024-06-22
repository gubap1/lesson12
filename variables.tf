variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}
variable "aws_backend_bucket" {
  description = "AWS S3 bucket used to store state file"
  type        = string
}
variable "aws_backend_file" {
  description = "Filepath in aws_backend_bucket for state file"
  type        = string
  default     = "terraformStates/lesson12/terraform.tfstate"
}
variable "aws_access_key" {
  description = "AWS access key of user for creating AWS objects"
  type        = string
  sensitive   = true
}
variable "aws_secret_key" {
  description = "AWS secret key to aws_access_key"
  type        = string
  sensitive   = true
}
variable "aws_ssh_key_name" {
  description = "AWS secret key to aws_access_key"
  type        = string
  default     = "DevOpsTraining"
}
