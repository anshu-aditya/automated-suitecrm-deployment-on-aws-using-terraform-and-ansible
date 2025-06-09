# SuiteCRM Deployment with DevOps Automation on AWS ☁️

This project demonstrates how to deploy and manage [SuiteCRM](https://suitecrm.com/) on AWS using Terraform for infrastructure provisioning, Ansible for configuration management, and Jenkins for CI/CD automation.

---

## 🚀 Tech Stack

- **Infrastructure as Code**: Terraform
- **Configuration Management**: Ansible
- **CI/CD Automation**: Jenkins (also compatible with GitHub Actions)
- **Cloud Provider**: AWS (EC2, RDS, S3, IAM, CloudWatch)
- **App Stack**: Apache, PHP, MySQL, SuiteCRM
- **Backup**: S3 + Shell Script
- **Monitoring**: AWS CloudWatch
- **Security**: IAM, Security Groups, HTTPS via Nginx + Certbot/ACM

---

## 🧱 Folder Structure

```bash

automated-suitecrm-deployment-on-aws-using-terraform-and-ansible/
├── terraform/         # Infrastructure provisioning (VPC, EC2, RDS, S3, etc.)
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── ansible/           # Configuration management (LAMP stack + SuiteCRM setup)
│   ├── inventory
│   ├── install-lamp.yml
│   ├── deploy-suitecrm.yml
│   └── backup-suitecrm.yml
│
├── jenkins/           # CI/CD pipeline config (optional)
│   └── Jenkinsfile
│
├── scripts/           # Shell scripts for backup automation
│   └── suitecrm-backup.sh
│
├── diagrams/          # Architecture diagrams and visual docs
│   └── architecture-diagram.png
│
├── .gitignore         # Ignored files
└── README.md          # Project documentation



🏗 Architecture

See diagrams/architecture-explanation.md for detailed breakdown of this diagram.

⚙️ Setup Instructions

1️⃣ Provision Infra with Terraform
cd terraform
terraform init
terraform apply

2️⃣ Configure EC2 with Ansible
cd ansible
ansible-playbook -i inventory install-lamp.yml
ansible-playbook -i inventory deploy-suitecrm.yml

3️⃣ Setup CI/CD Pipeline (Jenkins or GitHub Actions)
Use jenkins/Jenkinsfile for Jenkins

Or set up .github/workflows/deploy.yml for GitHub Actions (coming soon)

4️⃣ Automate Backups to S3
crontab -e
# Add:
0 2 * * * /home/ubuntu/scripts/suitecrm-backup.sh


✨ Features

🔁 End-to-end automation (Infra + App + CI/CD)

☁️ AWS-native infrastructure

🐧 LAMP stack and SuiteCRM deployment

🔐 IAM-based secure access and networking

📦 S3-based backup with lifecycle policies

📈 Monitoring with CloudWatch




```
