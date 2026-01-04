# GCP Terraform Configuration

This directory contains Terraform configuration files for deploying resources on Google Cloud Platform (GCP). The configurations are designed to create scalable infrastructure that can support monitoring services such as Grafana, Loki, and Prometheus.

## Prerequisites

- Ensure you have [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- Set up a Google Cloud account and create a project.
- Install the Google Cloud SDK and authenticate using `gcloud auth login`.

## Directory Structure

- `main.tf`: The main Terraform configuration file that defines the infrastructure.
- `variables.tf`: This file contains variable definitions used in the Terraform configuration.
- `outputs.tf`: This file defines the outputs of the Terraform configuration.
- `providers.tf`: This file specifies the provider configuration for GCP.
- `preemptible-instances.tfvars.example`: An example of variable values for preemptible instances in GCP.

## Usage

1. **Clone the Repository**: Clone this repository to your local machine.

   ```bash
   git clone <repository-url>
   cd monitoring-platform/terraform/gcp
   ```

2. **Initialize Terraform**: Run the following command to initialize the Terraform configuration.

   ```bash
   terraform init
   ```

3. **Configure Variables**: Copy the `preemptible-instances.tfvars.example` file to `preemptible-instances.tfvars` and update the values as needed.

   ```bash
   cp preemptible-instances.tfvars.example preemptible-instances.tfvars
   ```

4. **Plan the Deployment**: Run the following command to see what resources will be created.

   ```bash
   terraform plan -var-file="preemptible-instances.tfvars"
   ```

5. **Apply the Configuration**: Deploy the resources by running:

   ```bash
   terraform apply -var-file="preemptible-instances.tfvars"
   ```

6. **Destroy the Resources**: To remove all resources created by Terraform, run:

   ```bash
   terraform destroy -var-file="preemptible-instances.tfvars"
   ```

## Notes

- Ensure that you have the necessary permissions to create resources in your GCP project.
- Review the `main.tf` file to understand the resources being created and modify them as needed for your specific use case.

## Support

For any issues or questions, please refer to the [Terraform documentation](https://www.terraform.io/docs/index.html) or reach out to the project maintainers.