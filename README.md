🚀 Terraform AWS EKS Infrastructure for EcomTelemetry-App

Welcome to the **EcomTelemetry-App** infrastructure repository! This project sets up a highly scalable **AWS EKS (Elastic Kubernetes Service) and VPC (Virtual Private Cloud)** environment using **Terraform**. The backend state is securely managed using **Amazon S3 and DynamoDB state locking**.

🔗 **EcomTelemetry-App Repo:** [EcomTelemetry-App](https://github.com/Preetbandgar/EcomTelemetry-App.git)

---

📌 Project Architecture

```
Terraform-aws-eks/
│── backend/
│   ├── main.tf
│── eks/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│── vpc/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│── main.tf
│── variables.tf
│── outputs.tf
│── README.md
```

---

⚡ Prerequisites

✅ **EC2 Instance**: Launch an AWS EC2 instance with **Ubuntu/Linux** (minimum `t2.medium` recommended)

✅ **AWS CLI**: Install AWS CLI on the EC2 instance

✅ **IAM Credentials**: Configure AWS credentials using the following command:

```sh
aws configure
```

✅ **Terraform**: Install Terraform v1.3+

✅ **kubectl**: Install kubectl for interacting with EKS

---

🏗️ Terraform Backend Setup

Before deploying the infrastructure, **set up the Terraform backend** by executing `main.tf` in the `backend/` directory. This will create **an S3 bucket and a DynamoDB table for state locking**.

### Steps:

1️⃣ **Navigate to the backend directory**:
   ```sh
   cd backend/
   ```
2️⃣ **Modify `main.tf`** to specify your preferred AWS region and S3 bucket name.
3️⃣ **Initialize and apply Terraform** to create backend resources:
   ```sh
   terraform init
   terraform apply -auto-approve
   ```
4️⃣ **Ensure the same S3 bucket name** is used in the final `main.tf` when invoking the EKS and VPC modules.

---

🚀 Deployment Steps

1️⃣ **Navigate to the root directory**:
   ```sh
   cd ..
   ```
2️⃣ **Initialize Terraform**:
   ```sh
   terraform init
   ```
3️⃣ **Validate the configuration**:
   ```sh
   terraform validate
   ```
4️⃣ **Plan the deployment**:
   ```sh
   terraform plan
   ```
5️⃣ **Apply the infrastructure**:
   ```sh
   terraform apply -auto-approve
   ```

---

🧹 Cleanup
To destroy the infrastructure, run:
```sh
terraform destroy -auto-approve
```

---

🤝 Contributing

💡 Feel free to **fork** the repository, create a **feature branch**, and submit a **pull request**!

---

⚠️ Important Notes:

🔹 **Execute `main.tf` in the `backend/` folder first** to create the Terraform backend using S3 and DynamoDB.  
🔹 **Ensure the same S3 bucket name** is referenced in the final `main.tf` that invokes the **EKS and VPC modules**.

💙 **Credits**
This project utilizes OpenTelemetry demo documentation and acknowledges the contributions of the **OpenTelemetry team and community** for their valuable resources and guidance.

Happy Coding! 🚀

