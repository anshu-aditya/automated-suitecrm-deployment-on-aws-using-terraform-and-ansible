# 📊 Architecture Explanation: Automated SuiteCRM Deployment on AWS

This file explains the architecture of the **Automated SuiteCRM Deployment on AWS using Terraform and Ansible** project.

---

## 🧑‍💻 Developer Side

- The developer initiates the deployment pipeline using **Jenkins**.

## 🔁 CI/CD Pipeline

- **Jenkins** orchestrates:
  - `Terraform` for provisioning AWS infrastructure.
  - `Ansible` for installing and configuring SuiteCRM.

## ⚙️ Terraform-Provisioned AWS Resources

- **EC2** instance: Hosts the SuiteCRM web application.
- **RDS**: Backend database (MySQL/PostgreSQL) for SuiteCRM.
- **IAM Roles**: Secure access permissions for resources.
- **Security Groups**: Control network access to EC2 and RDS.
- **CloudWatch**: Monitor logs and metrics.
- **S3**: Store backups or SuiteCRM static assets.

## 🔧 Ansible Configuration

- Installs the **LAMP stack** (Linux, Apache, MySQL, PHP).
- Deploys **SuiteCRM** on EC2.
- Manages tasks like:
  - File permissions
  - SSL/Firewall configuration
  - Cron jobs and backup scripts

## 📦 SuiteCRM Stack Overview

- Web server (Apache) serves SuiteCRM UI.
- Connects securely to **RDS** database.
- Logs/metrics routed to **CloudWatch**.
- Assets/backups optionally sent to **S3**.

## 🔐 Security

- SSH access restricted via Security Groups.
- IAM follows principle of least privilege.
- Backups and logs are centralized and monitored.

---

✅ This setup is a full DevOps lifecycle implementation for real-world SuiteCRM hosting on AWS.
