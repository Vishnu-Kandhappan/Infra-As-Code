# Infrastructure as Code (IaC) – Terraform Practical Guide

> A DevOps & Cloud Architect’s guide to **Infrastructure as Code**, explaining *why it exists*, *who needs it*, *how it differs from tools like Ansible and Jenkins*, and *how to use Terraform locally and at scale*.

---

##  What is Infrastructure as Code (IaC)?

**Infrastructure as Code (IaC)** is the practice of **defining, provisioning, and managing infrastructure using declarative code** instead of manual processes or scripts.

With IaC:
- Infrastructure becomes **version-controlled**
- Environments are **repeatable and predictable**
- Changes are **auditable and reviewable**
- Drift between desired and actual state is **detectable**

Terraform is one of the most widely adopted IaC tools because it supports **multi-cloud, hybrid, and on-prem** environments with a consistent workflow.

---

## 👥 Who Is IaC Required For?

IaC is essential for:

- DevOps & Platform Engineering teams  
- Cloud & Solution Architects  
- SRE teams managing availability and scale  
- Enterprises with compliance & audit requirements  
- Startups scaling across regions and environments  

If your infrastructure must be:
- recreated quickly
- scaled safely
- governed centrally
- audited reliably  


---

## ⚖️ How IaC Differs from Ansible & Jenkins

### Terraform vs Ansible vs Jenkins

| Aspect | Terraform (IaC) | Ansible | Jenkins |
|-----|-----|-----|-----|
| Primary purpose | Infrastructure lifecycle | Configuration management | CI/CD orchestration |
| Model | Declarative | Imperative | Imperative |
| Infrastructure state | ✅ Managed | ❌ Not tracked | ❌ Not applicable |
| Drift detection | ✅ Native | ❌ None | ❌ None |
| Infra creation | ✅ Yes | ⚠️ Limited | ❌ No |
| App deployment | ❌ No | ✅ Yes | ✅ Yes |
| Best role | Infra provisioning | OS/App config | Pipeline automation |

### Rule of Thumb
- **Terraform** → *What infrastructure should exist*
- **Ansible** → *What should run on that infrastructure*
- **Jenkins** → *When and how automation is triggered*

These tools **complement**, not replace, each other.

---

## Terraform Local Deployment (Developer Workflow)

### Install Terraform
https://developer.hashicorp.com/terraform/install

### Terraform Building Blocks
- Terraform configuration files (written in HCL)
- Terraform modules (collections of configs)
- Terraform plans/state (artifacts generated during execution)

### Terraform Folder structure
terraform/
├── main.tf              # Core infrastructure resources
├── variables.tf         # Input variables
├── outputs.tf           # Exported values
├── providers.tf         # Cloud providers & versions
├── backend.tf           # Remote state configuration
├── terraform.tfvars     # Environment-specific values
├── modules/             # Reusable modules
│   ├── network/
│   ├── compute/
│   └── security/
└── envs/
    ├── dev/
    ├── uat/
    └── prod/


### Basic Terraform workflow (how to execute)
terraform fmt -check
terraform validate
terraform init
terraform plan -out=tfplan
terraform apply tfplan

## What Enterprise Terraform brings in 

Terraform Cloud adds governance and collaboration on top of open-source Terraform.

- Remote state with locking
- Role-based access control (RBAC)
- Policy-as-Code (Sentinel)
- Secure variable management
- Audit logs for compliance
- Team-based workflows
- Enterprise-grade scalability

## Standard Devops Terraform Workflows
