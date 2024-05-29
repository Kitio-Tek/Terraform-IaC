# Terraform Configuration for AWS Infrastructure

This repository contains Terraform configurations for deploying AWS resources. The structure is modular, allowing for scalable and reusable code. It includes various configurations like VPC setup, EC2 instances, and more, managed across multiple Terraform files and modules.

## Project Structure

Here is an overview of the project files and directories:

- `entry-script.sh`: This script is used as user data for configuring EC2 instances upon launch. It typically includes software installation and system updates.
- `main.tf`: The main Terraform configuration file that orchestrates the setup of all resources.
- `modules/`: This directory contains modular configurations that can be reused across different environments or AWS setups.
- `outputs.tf`: This file declares outputs from your Terraform configurations which can be useful for obtaining IP addresses, DNS names, and other important data.
- `providers.tf`: Specifies the Terraform providers and their versions, e.g., AWS.
- `terraform.tfstate`: This JSON file contains the state of Terraform-managed resources and is crucial for Terraform's operation. It should not be manually edited.
- `terraform.tfstate.backup`: A backup of the previous state of your Terraform-managed infrastructure.
- `terraform.tfvars`: A file where values for variables are stored that should not be publicly shared (e.g., API keys and passwords).
- `variables.tf`: This file defines variables that will be used across multiple configuration files.

## Getting Started

Follow these steps to use this Terraform configuration:

1. **Initialize Terraform:**

    Run the following command to initialize the Terraform environment, which will download the required providers.

    ```bash
    terraform init
    ```

2. **Plan Your Deployment:**

    Execute this command to see the changes Terraform plans to make to your AWS infrastructure.

    ```bash
    terraform plan
    ```

3. **Apply Configuration:**

    Apply the Terraform configuration to start building the AWS infrastructure.

    ```bash
    terraform apply
    ```

    Confirm the apply when prompted unless you use the `-auto-approve` flag.

4. **Destroy Infrastructure (if needed):**

    To tear down the infrastructure managed by Terraform and delete all resources, use:

    ```bash
    terraform destroy
    ```
