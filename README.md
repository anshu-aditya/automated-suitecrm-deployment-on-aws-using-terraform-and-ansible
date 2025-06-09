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
suitecrm-devops-automation-aws/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── ansible/
│   ├── inventory
│   ├── install-lamp.yml
│   ├── deploy-suitecrm.yml
│   └── backup-suitecrm.yml
├── jenkins/
│   └── Jenkinsfile
├── scripts/
│   └── suitecrm-backup.sh
├── diagrams/
│   └── architecture-diagram.png
├── .gitignore
└── README.md

