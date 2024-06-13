variable "aws_region" {
  description = "The AWS region to deploy the Lambda function"
  type        = string
  default     = "us-west-2"
}

variable "s3_key" {
  description = "s3 key"
  type        = string

}
