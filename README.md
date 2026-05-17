# Terraform Azure Secure Infrastructure

Secure Azure infrastructure deployed with Terraform including a hardened Linux VM, segmented networking, SSH-only authentication, Storage Account security controls, Azure Key Vault integration, and Managed Identity access.

---

## Business Problem

Many small businesses and growing environments deploy cloud infrastructure quickly but overlook security fundamentals such as:

- Hardcoded credentials
- Open SSH access to the internet
- Publicly accessible storage accounts
- Poor secret management
- Manual infrastructure deployment
- Lack of identity-based access controls
- Inconsistent environments across deployments

These issues increase:
- Security risk
- Operational overhead
- Misconfiguration risk
- Long-term cloud costs
- Downtime potential

This project demonstrates how Infrastructure as Code (IaC) with Terraform can create a repeatable, secure, and cost-conscious Azure environment while following modern cloud security practices.

---

## Solution Overview

This Terraform deployment provisions:

- Azure Resource Group
- Virtual Network (VNet)
- Public and Private Subnets
- Network Security Group (NSG)
- Hardened Linux Virtual Machine
- SSH Key Authentication
- Secure Storage Account
- Azure Key Vault
- System-Assigned Managed Identity
- Key Vault Access Policies

The environment is fully reproducible and deployable using Terraform.

---

## Security Improvements Implemented

### SSH Key Authentication

Password authentication is disabled on the VM.

Benefits:
- Reduces brute-force attack risk
- Eliminates hardcoded passwords
- Follows modern Linux VM security practices

---

### Restricted SSH Access

SSH access is restricted to a specific public IP address instead of allowing inbound access from the entire internet.

Benefits:
- Reduces attack surface
- Prevents unauthorized remote access attempts
- Improves perimeter security

---

### Storage Account Hardening

Security controls implemented:
- HTTPS-only traffic
- TLS 1.2 minimum
- Public blob access disabled

Benefits:
- Protects data in transit
- Prevents accidental public exposure
- Aligns with Azure security recommendations

---

### Azure Key Vault Integration

Azure Key Vault is used for centralized secret management.

Benefits:
- Eliminates storing secrets directly in code
- Centralizes sensitive credential management
- Improves operational security

---

### Managed Identity Access

The Linux VM uses a System-Assigned Managed Identity to securely access Key Vault secrets without embedding credentials.

Benefits:
- No secrets stored on the VM
- Eliminates credential sprawl
- Improves identity security posture

---

## Cost Optimization

This project was intentionally designed using lower-cost Azure resources suitable for labs, development, and small environments.

Examples:
- Standard_LRS storage replication
- Small VM sizing
- Minimal infrastructure footprint
- Single-region deployment

This demonstrates balancing:
- Security
- Functionality
- Cloud cost efficiency

---

## Technologies Used

- Terraform
- Microsoft Azure
- Azure Virtual Network
- Azure NSG
- Azure Key Vault
- Azure Managed Identity
- Linux Virtual Machines
- SSH

---

## Project Structure

```text
.
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
└── .gitignore
```

---

## Deployment Steps

### 1. Clone Repository

```bash
git clone https://github.com/kbutts-cyber/terraform-azure-secure-infra.git
cd terraform-azure-secure-infra
```

### 2. Create terraform.tfvars

```hcl
allowed_ssh_ip = "YOUR_PUBLIC_IP"
```

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Validate Configuration

```bash
terraform validate
```

### 5. Review Deployment Plan

```bash
terraform plan
```

### 6. Deploy Infrastructure

```bash
terraform apply
```

---

## Future Improvements

Potential next steps:
- Azure Bastion integration
- Private Endpoints
- Remote Terraform state storage
- CI/CD pipeline deployment
- Azure Monitor and Log Analytics
- RBAC enhancements
- Sentinel/Policy as Code
- Multi-environment deployments

---

## Author

Kobe Butts

Focused on Cloud Infrastructure, Automation, Security, and Infrastructure as Code.
