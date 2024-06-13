provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_role" "lambda_role" {
  name = "lambda-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "lambda_basic_execution" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_lambda_function" "hello_world" {
  s3_bucket        = aws_s3_bucket.lambda_bucket.bucket
  s3_key           = var.s3_key
  function_name    = "DotNetLambdaHelloWorld"
  role             = aws_iam_role.lambda_role.arn
  handler          = "DotNetLambdaHelloWorld::DotNetLambdaHelloWorld.Function::FunctionHandler"
  runtime          = "dotnet8"
}
