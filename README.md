# Django SaaS E-Commerce DevOps Platform

> **Stage 5 of 12 — Career Progression Project**  
> Portfolio project by **Yugandhar Ethamukkala**.

Full-stack Django SaaS/e-commerce application packaged with Docker, Docker Compose, Kubernetes deployment files, tests, and AWS deployment automation.

## Career Progression Story

Application platform step: I worked on a larger real-world style application with database, Docker, Kubernetes, and AWS deployment assets.

This repo is part of my 12-project DevOps portfolio path. The goal is to show steady growth from CI/CD foundations into AWS cloud, Kubernetes, GitOps, observability, DevSecOps, progressive delivery, and AI-enabled deployments.

## What This Project Demonstrates

- Shows application platform engineering, not only infrastructure scripts.
- Includes realistic runtime concerns such as environment variables, database migrations, static assets, and health checks.
- Good project for explaining how DevOps supports developers and production readiness.

## Tech Stack

`Python` `Django` `PostgreSQL` `Redis` `Celery` `Docker` `Docker Compose` `Kubernetes` `AWS` `GitHub Actions`

## Architecture

```mermaid
flowchart LR
  User[User] --> Nginx[Nginx / Reverse Proxy]
  Nginx --> Django[Django App]
  Django --> Postgres[(PostgreSQL)]
  Django --> Redis[(Redis)]
  Redis --> Celery[Celery Worker]
  CI[CI/CD] --> Docker[Docker Image]
  Docker --> K8S[Kubernetes or EC2 Deployment]
```

## Repository Structure

```text
.
├── .dockerignore
├── .env.example
├── .terraformignore
├── Dockerfile
├── Makefile
├── Procfile
├── README.md
├── REPO_UPLOAD_CHECKLIST.md
├── apps/
├── autoPull.sh
├── autoPush.sh
├── database.ini
├── deployment.yaml
├── deployments/
├── docker-compose-nginx.yaml
├── docker-compose.yml
├── docs/
├── gunicorn_config.py
└── ...
```

## Prerequisites

- Git
- Docker where containers are used
- Cloud CLI/tools only when deploying cloud resources
- `kubectl`, `kind`, `terraform`, `sam`, `maven`, `npm`, or `python` depending on the project
- Never commit real `.env` files, API keys, access keys, kubeconfigs, private keys, or tokens

## Local Run

```bash
cp .env.example .env
docker compose up --build
open http://127.0.0.1:8585/
```

## Validation Before GitHub Upload

Run these checks before pushing major changes:

```bash
cp .env.example .env
make check
docker compose config --quiet
python manage.py test tests.test_healthcheck --noinput
```

## Deployment Overview

1. Review .env values and keep real secrets in a secret manager.
2. Build and push the Docker image to your registry.
3. Apply Kubernetes manifests or use the AWS deployment scripts after updating variables.
4. Run database migrations and verify the health endpoint before exposing traffic.

## Screenshots

The project already included these snapshots, so I added them into the README. Replace them with your own latest run screenshots when you execute the lab.

### Application homepage

![Application homepage](docs/screenshots/app-home.png)

### Application product/page view

![Application product/page view](docs/screenshots/app-product-page.png)

## Cleanup / Cost Control

Run cleanup commands after testing so cloud resources do not keep charging:

```bash
docker compose down -v
kubectl delete -f deployment.yaml --ignore-not-found=true
terraform destroy -auto-approve # run only from the Terraform folder you used
```

## Security Notes

- Use GitHub Actions OIDC, Jenkins credentials, AWS Secrets Manager, Vault, or Kubernetes Secrets instead of hard-coded keys.
- Keep `.env` files local and commit only `.env.example` with safe placeholders.
- Review Terraform plans before apply/destroy.
- Do not publish account IDs, private IPs, public IPs from your lab, billing pages, or credential screenshots.

## How I Would Explain This in an Interview

I built this project as part of my DevOps portfolio to show hands-on experience with the tools used in real delivery environments. The focus is not only on writing code, but also on creating a repeatable workflow for build, validation, deployment, security, monitoring, and cleanup.

In a real project, I would connect this type of setup with environment-specific variables, approval gates, secrets management, monitoring dashboards, and rollback steps so teams can release safely and troubleshoot faster.

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:0F2027,50:2C5364,100:00C9FF&height=120&section=footer&text=Let's%20Connect&fontColor=ffffff&fontSize=32&fontAlignY=70" />
</p>

<h2 align="center">🤝 Connect With Me</h2>

<p align="center">
  <em>
    Thanks for visiting this project! I’m continuously building hands-on DevOps, Cloud, Automation, and AI-enabled engineering projects to improve real-world deployment, monitoring, and infrastructure skills.
  </em>
</p>

<p align="center">
  <img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&size=22&duration=2500&pause=800&color=00C9FF&center=true&vCenter=true&width=650&lines=DevOps+%7C+Cloud+%7C+Automation;CI%2FCD+%7C+Docker+%7C+Kubernetes+%7C+Terraform;Building+real-world+projects+one+commit+at+a+time" alt="Typing SVG" />
</p>

<p align="center">
  <a href="https://github.com/yugandhar99" target="_blank" rel="noopener noreferrer">
    <img src="https://img.shields.io/badge/GitHub-Follow-181717?style=flat&logo=github&logoColor=white" alt="GitHub" />
  </a>
  <a href="https://www.linkedin.com/in/yugandhar-devops" target="_blank" rel="noopener noreferrer">
    <img src="https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=flat&logo=linkedin&logoColor=white" alt="LinkedIn" />
  </a>
  <a href="https://yugandhar-portfolio-psi.vercel.app/" target="_blank" rel="noopener noreferrer">
    <img src="https://img.shields.io/badge/Portfolio-View%20My%20Work-FF5722?style=flat&logo=vercel&logoColor=white" alt="Portfolio" />
  </a>
  <a href="mailto:yugandharethamukkala1999@gmail.com">
    <img src="https://img.shields.io/badge/Email-Contact%20Me-D14836?style=flat&logo=gmail&logoColor=white" alt="Email" />
  </a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Focus-DevOps%20Engineering-blue?style=flat-square" />
  <img src="https://img.shields.io/badge/Cloud-AWS%20%7C%20Azure%20%7C%20GCP-orange?style=flat-square" />
  <img src="https://img.shields.io/badge/IaC-Terraform-purple?style=flat-square" />
  <img src="https://img.shields.io/badge/Containers-Docker%20%7C%20Kubernetes-2496ED?style=flat-square" />
</p>

---

<p align="center">
  ⭐ If this project added value, feel free to star the repository and connect with me!
</p>

<p align="center">
  <strong>Built with ❤️ using modern DevOps practices</strong>
</p>

