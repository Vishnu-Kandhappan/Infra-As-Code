# Terraform Examples

This directory contains example configurations for using Terraform to manage infrastructure across different cloud providers. The examples demonstrate how to deploy spot instances in AWS, preemptible instances in Google Cloud Platform (GCP), and spot VMs in Azure.

## Usage

1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd monitoring-platform/terraform/examples
   ```

2. **Select a Cloud Provider**
   Choose the appropriate example based on the cloud provider you wish to use:
   - **AWS**: Navigate to the `aws` directory for configurations related to AWS.
   - **GCP**: Navigate to the `gcp` directory for configurations related to Google Cloud Platform.
   - **Azure**: Navigate to the `azure` directory for configurations related to Azure.

3. **Configure Variables**
   Each provider's directory contains a `*.tfvars.example` file. Copy this file to `*.tfvars` and modify the values as needed:
   ```bash
   cp aws/spot-instances.tfvars.example aws/spot-instances.tfvars
   ```

4. **Initialize Terraform**
   Run the following command to initialize the Terraform configuration:
   ```bash
   terraform init
   ```

5. **Plan the Deployment**
   Generate an execution plan to see what actions Terraform will take:
   ```bash
   terraform plan -var-file=spot-instances.tfvars
   ```

6. **Apply the Configuration**
   Deploy the infrastructure by applying the configuration:
   ```bash
   terraform apply -var-file=spot-instances.tfvars
   ```

## Notes
- Ensure you have the necessary permissions and credentials set up for the cloud provider you are using.
- Review the README files in each provider's directory for more detailed instructions and configurations.

