# ⚙️ PipelineForge

> **DevOps Engineering · CI/CD Pipelines · Cloud-Native Solutions**  
> Built and deployed by [Sharana Basava] (https://github.com/sharanabasava-dev)

![AWS](https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Nginx](https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white)

--- 

## 🌍 Live Website

👉 [http://3.110.186.29](http://3.110.186.29)  
👉 [https://sharanabasava-dev.github.io/pipelineforge](https://sharanabasava-dev.github.io/pipelineforge)

---

## 📌 About

**PipelineForge** is a DevOps engineering service that replaces manual, error-prone deployment work with automated pipelines.

Instead of SSH-ing into servers and manually pulling code — we build CI/CD pipelines that do all of that automatically, every time you push code.

> *"Pipelines shouldn't be an afterthought — they should be forged with craft and precision."*

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| **AWS EC2** | Cloud server to host the application |
| **AWS ECR** | Private Docker image registry |
| **Docker** | Containerization of the website |
| **Nginx** | Web server inside the container |
| **GitHub Actions** | CI/CD pipeline — auto build & deploy |
| **Formspree** | Contact form email forwarding |
| **CloudWatch** | Server monitoring & observability |

---

## 🚀 CI/CD Pipeline

Every time code is pushed to the `main` branch, the pipeline automatically:

```
Push to GitHub
      ↓
GitHub Actions triggers
      ↓
Configure AWS credentials
      ↓
Build Docker image
      ↓
Push image to AWS ECR
      ↓
SSH into EC2
      ↓
Pull latest image & restart container
      ↓
🌍 Live on AWS
```

---

## 📁 Project Structure

```
pipelineforge/
├── index.html              ← Website (HTML/CSS/JS)
├── Dockerfile              ← Docker container config
├── nginx.conf              ← Nginx web server config
├── README.md               ← You are here
└── .github/
    └── workflows/
        └── deploy.yml      ← GitHub Actions CI/CD pipeline
```

---

## 🐳 Run Locally

**Prerequisites:** Docker installed on your machine

```bash
# Clone the repo
git clone https://github.com/sharanabasava-dev/pipelineforge.git
cd pipelineforge

# Build Docker image
docker build -t pipelineforge .

# Run locally
docker run -p 8080:80 pipelineforge
```

Open 👉 [http://localhost:8080](http://localhost:8080)

---

## ⚙️ GitHub Actions Workflow

The CI/CD pipeline is defined in `.github/workflows/deploy.yml`

**Required GitHub Secrets:**

| Secret | Description |
|---|---|
| `AWS_ACCESS_KEY_ID` | AWS IAM Access Key |
| `AWS_SECRET_ACCESS_KEY` | AWS IAM Secret Key |
| `AWS_REGION` | AWS Region (ap-south-1) |
| `EC2_HOST` | EC2 Public IP Address |
| `EC2_SSH_KEY` | EC2 Private Key (.pem content) |

---

## 📬 Contact

| | |
|---|---|
| **Email** | sharanpower581@gmail.com |
| **Phone** | +91 636144987 |
| **GitHub** | [github.com/sharanabasava-dev](https://github.com/sharanabasava-dev) |
| **Portfolio** | [sharanabasava-dev.github.io/sharana-portfolio](https://sharanabasava-dev.github.io/sharana-portfolio/) |
| **Location** | Bengaluru, Karnataka, India |

---

## 📄 License

MIT License — feel free to use this as a reference for your own DevOps projects.

---

<p align="center">⚙️ Built with craft and precision by <strong>Sharana Basava</strong></p>
