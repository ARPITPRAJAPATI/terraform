# 🚀 Terraform on AWS — Infrastructure as Code

> A hands-on Terraform project demonstrating how to provision, manage, and automate AWS infrastructure using Infrastructure as Code (IaC). This repository covers Terraform fundamentals, remote state management, reusable modules, and multi-environment deployments following DevOps best practices.

<p align="center">

![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?style=for-the-badge\&logo=terraform)
![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?style=for-the-badge\&logo=amazonaws)
![GitHub](https://img.shields.io/badge/GitHub-Version%20Control-181717?style=for-the-badge\&logo=github)
![Linux](https://img.shields.io/badge/Linux-WSL-FCC624?style=for-the-badge\&logo=linux)

</p>

---

# 📖 Project Overview

This repository documents my journey of learning **Terraform** by automating AWS infrastructure from scratch.

The project starts with launching an EC2 instance and gradually progresses towards production-ready Terraform practices including:

* Infrastructure as Code (IaC)
* Remote State Management
* State Locking
* Terraform Modules
* Multiple Environments using Workspaces
* Reusable Infrastructure

---

# 🏗️ Architecture

```text
                    ┌──────────────────────┐
                    │   Terraform CLI      │
                    └──────────┬───────────┘
                               │
                      terraform apply
                               │
                               ▼
                    ┌──────────────────────┐
                    │   AWS Provider       │
                    └──────────┬───────────┘
                               │
      ┌────────────────────────┼─────────────────────────┐
      │                        │                         │
      ▼                        ▼                         ▼
┌──────────────┐      ┌────────────────┐      ┌─────────────────┐
│ EC2 Instance │      │ Security Group │      │ SSH Key Pair    │
└──────────────┘      └────────────────┘      └─────────────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │      Default VPC     │
                    └──────────────────────┘
```

---

# 🌍 Remote Backend Architecture

```text
                Terraform CLI
                      │
                      ▼
          terraform apply / destroy
                      │
                      ▼
              Remote State Backend
          ┌────────────────────────┐
          │       Amazon S3        │
          │ terraform.tfstate      │
          └──────────┬─────────────┘
                     │
          State Lock │
                     ▼
          ┌────────────────────────┐
          │   Amazon DynamoDB      │
          │     LockID Record      │
          └────────────────────────┘
```

---

# 📂 Repository Structure

```text
.
├── provider.tf
├── variables.tf
├── outputs.tf
├── terraform.tf
├── ec2.tf
├── infra-app/
├── .gitignore
└── README.md
```

---

# ⚙️ Features

### ✅ AWS Infrastructure Provisioning

* Launch EC2 instances
* Configure Security Groups
* Import SSH Key Pairs
* Configure Root Volumes

---

### ✅ Remote State Management

* Store Terraform state in Amazon S3
* Enable collaboration
* Prevent accidental state loss

---

### ✅ State Locking

* Lock Terraform state using DynamoDB
* Prevent concurrent infrastructure changes

---

### ✅ Terraform Modules

* Modular project structure
* Reusable infrastructure components
* Environment-specific deployments

---

### ✅ Terraform Workspaces

Manage multiple environments independently.

Example:

```text
default
dev
staging
production
```

Each workspace maintains its own Terraform state.

---

# 📚 Terraform Workflow

```text
Write Code
     │
     ▼
terraform init
     │
     ▼
terraform validate
     │
     ▼
terraform plan
     │
     ▼
terraform apply
     │
     ▼
Infrastructure Created
     │
     ▼
terraform destroy
```

---

# 🛠️ Technologies Used

* Terraform
* AWS EC2
* AWS VPC
* Amazon S3
* Amazon DynamoDB
* Git
* GitHub
* Linux (WSL)

---

# 🚀 Getting Started

### Clone Repository

```bash
git clone https://github.com/ARPITPRAJAPATI/terraform.git
cd terraform
```

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Preview Changes

```bash
terraform plan
```

### Deploy Infrastructure

```bash
terraform apply
```

### Destroy Infrastructure

```bash
terraform destroy
```

---

# 📖 Concepts Covered

* Terraform Providers
* Variables
* Outputs
* Resources
* Dependency Graph
* State File
* Remote Backend
* State Locking
* Modules
* Workspaces
* Infrastructure Lifecycle

---

# 🎯 Learning Outcomes

Through this project I learned how to:

* Build AWS infrastructure using Infrastructure as Code.
* Automate EC2 provisioning with Terraform.
* Organize infrastructure into reusable modules.
* Configure remote state storage using Amazon S3.
* Prevent simultaneous infrastructure changes using DynamoDB locking.
* Manage multiple environments with Terraform Workspaces.
* Follow Terraform best practices for scalable infrastructure.

---

# 👨‍💻 Author

**Arpit Prajapati**

GitHub: **https://github.com/ARPITPRAJAPATI**

---

# ⭐ Support

If you found this repository useful, consider giving it a **⭐**.
