# Azure Terraform Configuration

This directory contains Terraform configuration files for deploying resources on Microsoft Azure. The configurations are designed to create scalable and cost-effective infrastructure suitable for managing a large number of servers.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- An Azure account with the necessary permissions to create resources.
- Azure CLI installed and configured (optional if using a credentials file). You can log in using the command:
  ```bash
  az login
  ```

## Directory Structure

- `main.tf`: The main Terraform configuration file that defines the Azure resources.
- `variables.tf`: This file contains variable definitions used in the Terraform configuration.
- `outputs.tf`: This file defines the outputs of the Terraform configuration, such as resource IDs and IP addresses.
- `providers.tf`: This file specifies the provider configuration for Azure.
- `spot-vms.tfvars.example`: An example of variable values for deploying spot VMs in Azure.

## Usage

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd monitoring-platform/terraform/azure
   ```

2. **Initialize Terraform**:
   ```bash
   terraform init
   ```

3. **Prepare credentials**:
   Use a credentials file (recommended) or Azure CLI authentication. The credentials file must be JSON:

   ```json
   {
     "subscription_id": "00000000-0000-0000-0000-000000000000",
     "client_id": "00000000-0000-0000-0000-000000000000",
     "client_secret": "your_client_secret",
     "tenant_id": "00000000-0000-0000-0000-000000000000"
   }
   ```

4. **Create a `spot-vms.tfvars` file**:
   Copy `spot-vms.tfvars.example` to `spot-vms.tfvars` and set your values, including the path to your credentials file:

   ```hcl
   azure_credentials_file = "C:/path/to/azure-credentials.json"
   ```

   To provide credentials directly instead of a file, set these in `spot-vms.tfvars`:
   `azure_subscription_id`, `azure_client_id`, `azure_client_secret`, `azure_tenant_id`.

   You can also set variables via environment variables:

   ```bash
   $env:TF_VAR_location="East US"
   $env:TF_VAR_zone="1"
   $env:TF_VAR_vm_size="Standard_D2s_v3"
   $env:TF_VAR_spot_instance="true"
   ```

5. **Plan the deployment**:
   ```bash
   terraform plan -var-file=spot-vms.tfvars
   ```

6. **Apply the configuration**:
   ```bash
   terraform apply -var-file=spot-vms.tfvars
   ```

7. **Destroy the resources** (when no longer needed):
   ```bash
   terraform destroy
   ```

## Notes

- Ensure that you have set the appropriate resource limits and configurations to handle the expected load.
- Monitor your Azure resources to optimize costs and performance.
- Keep credentials out of source control and restrict file access to trusted users.

## Support

For any issues or questions, please refer to the [Terraform documentation](https://www.terraform.io/docs/index.html) or reach out to the project maintainers.
