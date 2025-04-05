# 🚀 Project 3 – Dockerized Node.js App with GitHub Actions CI/CD to AWS ECR

This project demonstrates a full DevOps pipeline that:
- Builds a Node.js application
- Packages it into a Docker container
- Automatically pushes the image to AWS Elastic Container Registry (ECR) via GitHub Actions
- Manages infrastructure using Terraform

---

## 🛠️ Tech Stack

- **Node.js** – Sample backend application
- **Docker** – Containerization of the app
- **AWS ECR** – Docker image hosting
- **Terraform** – Infrastructure as Code (ECR repo)
- **GitHub Actions** – CI/CD automation
- **GitHub Secrets** – Secure credential management

---

## 📁 Project Structure

```
project-3-docker-ci-ecr/
│
├── app/                     # Node.js application
│   ├── index.js
│   └── package.json
│
├── .github/workflows/       # GitHub Actions pipeline
│   └── docker-push.yml
│
├── terraform/               # Terraform configuration
│   ├── main.tf
│   ├── provider.tf
│   ├── variables.tf
│   └── output.tf (optional)
│
├── Dockerfile               # Docker build config
└── README.md                # You're reading it
```

---

## ⚙️ How It Works

### 1. Local Dev
Run your Node app locally:
```bash
cd app
node index.js
```

---

### 2. Build and Run Locally with Docker
```bash
docker build -t devops-node-app .
docker run -p 3000:3000 devops-node-app
```

---

### 3. Provision ECR Repo with Terraform
```bash
cd terraform
terraform init
terraform apply -var="ecr_repo_name=devops-node-ecr-repo"
```

---

### 4. GitHub Actions CI/CD Pipeline

Whenever you push to the `main` branch:
- GitHub checks out the code
- Builds the Docker image
- Logs into AWS ECR using GitHub Secrets
- Tags and pushes the image to ECR

🔐 **Secrets Used:**
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

These are stored securely in the repo's GitHub Secrets settings.

---

## 🧪 Sample Output (ECR)

After pushing, you'll find your image here:
```
AWS Console > ECR > devops-node-ecr-repo > Image tag: latest
```

---

## ✅ What I Learned

- Docker image builds & tagging
- AWS ECR repo creation via Terraform
- GitHub Actions job triggers, env variables, and build steps
- Secure authentication using GitHub Secrets
- CI/CD best practices for containerized apps

---

## 💬 How I Would Explain This in an Interview (STAR Format)

### ⭐ **S – Situation**  
I wanted to build a complete CI/CD pipeline for a Node.js app using Docker and AWS.

### 🎯 **T – Task**  
Automate the entire process — from build to deployment — and trigger it through GitHub Actions.

### 🛠 **A – Action**  
- Wrote a simple Node.js app  
- Containerized it with Docker  
- Created a GitHub Actions workflow to build and push the image  
- Used Terraform to create a private ECR repo  
- Stored AWS credentials securely in GitHub Secrets

### ✅ **R – Result**  
The pipeline ran successfully and pushed the Docker image to ECR. I confirmed the process end-to-end — from code commit to image upload — and documented it thoroughly.

---

## 🧠 Next Steps

- Add deployment to AWS ECS using Fargate
- Integrate Slack notifications in GitHub Actions
- Build multiple environments (dev, staging, prod)

---
