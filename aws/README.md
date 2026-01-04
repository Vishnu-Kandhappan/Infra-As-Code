# AWS Terraform Configuration

This directory contains Terraform configuration files for deploying resources on Amazon Web Services (AWS). The configurations are designed to create a scalable infrastructure capable of managing a large number of servers, suitable for production environments.

## Directory Structure

- **main.tf**: The main Terraform configuration file that defines the AWS resources to be created.
- **variables.tf**: This file defines the variables used in the AWS Terraform configuration, allowing for customization of the deployment.
- **outputs.tf**: This file defines the outputs of the AWS Terraform configuration, providing useful information after deployment.
- **providers.tf**: This file specifies the provider configuration for AWS, including authentication and region settings.
- **spot-instances.tfvars**: This file provides variable values for deploying spot instances in AWS.

## Usage

1. **Install Terraform**: Ensure that you have Terraform installed on your local machine. You can download it from [Terraform's official website](https://www.terraform.io/downloads.html).

2. **Configure AWS Credentials**: Use a shared credentials file and profile (recommended) or provide access keys in your `.tfvars` file.

   Example credentials entries in `spot-instances.tfvars`:

   ```hcl
   aws_shared_credentials_files = ["C:/Users/Pc/.aws/credentials"]
   aws_profile = "default"
   # aws_access_key_id = "YOUR_ACCESS_KEY_ID"
   # aws_secret_access_key = "YOUR_SECRET_ACCESS_KEY"
   ```

3. **Modify Variables**: Update `spot-instances.tfvars` to customize your deployment settings.

   You can also set variables via environment variables:

   ```bash
   $env:TF_VAR_aws_region="us-west-2"
   $env:TF_VAR_aws_zone="us-west-2a"
   $env:TF_VAR_instance_type="t3.micro"
   $env:TF_VAR_spot_instance="true"
   ```

4. **Initialize Terraform**: Run the following command to initialize the Terraform configuration:
   ```
   terraform init
   ```

5. **Plan the Deployment**: Generate an execution plan to see what resources will be created:
   ```
   terraform plan -var-file=spot-instances.tfvars
   ```

6. **Apply the Configuration**: Deploy the resources by running:
   ```
   terraform apply -var-file=spot-instances.tfvars
   ```

7. **Destroy the Infrastructure**: If you need to tear down the infrastructure, use:
   ```
   terraform destroy
   ```

## Notes

- Ensure that you have the necessary permissions in your AWS account to create the resources defined in the Terraform configuration.
- Keep credentials out of source control and restrict file access to trusted users.
- Review the `spot-instances.tfvars` file for guidance on configuring spot instances.

## Future Enhancements

This configuration can be extended to include additional resources, such as load balancers, databases, and monitoring services, to further enhance the infrastructure's capabilities.
