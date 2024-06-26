# dotnet-lambda-cicd
# .NET Lambda CI/CD with GitHub Actions and Terraform

This repository provides a complete CI/CD pipeline setup for deploying .NET Lambda functions using GitHub Actions and Terraform. It includes all necessary configurations and scripts to streamline your development and deployment process.

## Features

- **Automated Build and Test**: Leverage GitHub Actions to automatically build and test your .NET Lambda functions on each push or pull request.
- **Infrastructure as Code**: Utilize Terraform to manage AWS resources, ensuring consistent and reproducible deployments.
- **Continuous Deployment**: Seamlessly deploy your Lambda functions to AWS with every code change, maintaining high velocity and reliability.

## Components

- **GitHub Actions Workflows**: Predefined workflows to build, test, and deploy your .NET Lambda functions.
- **Terraform Configurations**: Infrastructure as Code (IaC) configurations for creating and managing AWS Lambda functions, IAM roles, API Gateway, and other necessary AWS resources.
- **.NET Lambda Function**: Sample .NET Lambda function with unit tests to demonstrate the CI/CD pipeline.
- **Scripts**: Utility scripts for common tasks such as environment setup, secret management, and deployment.

## Getting Started

1. **Clone the repository**:
    ```bash
    git clone https://github.com/your-username/dotnet-lambda-cicd.git
    cd dotnet-lambda-cicd
    ```
    
2. **Configure GitHub Secrets**:
    - Add necessary secrets (e.g., AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, TF_STATE_BUCKET) to your GitHub repository.


3. **Push Your Code**:
    - Push your changes to GitHub and watch the CI/CD pipeline in action.

## Acknowledgments

- [GitHub Actions](https://github.com/features/actions)
- [Terraform](https://www.terraform.io/)
- [AWS Lambda](https://aws.amazon.com/lambda/)
