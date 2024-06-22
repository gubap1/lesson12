
variable "aws_access_key" {
  description = "AWS access key of user for creating AWS objects"
  type = string
}
variable "aws_secret_key" {
  description = "AWS secret key to aws_access_key"
  type = string
}
variable "aws_ssh_key_name" {
  description = "AWS secret key to aws_access_key"
  type = string
  default = "DevOpsTraining"
}
