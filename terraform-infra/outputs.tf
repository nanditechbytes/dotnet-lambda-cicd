output "lambda_function_name" {
  description = "The name of the Lambda function"
  value       = aws_lambda_function.hello_world.function_name
}
