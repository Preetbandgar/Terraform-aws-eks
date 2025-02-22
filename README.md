⚡ Terraform AWS EKS Infrastructure for EcomTelemetry-App

![Terraform AWS EKS](https://miro.medium.com/max/1400/1*qPGRsEmwV9JjVGPG5g6MKA.png)

Welcome to the EcomTelemetry-App infrastructure repository! This project sets up a highly scalable AWS EKS (Elastic Kubernetes Service) and VPC (Virtual Private Cloud) environment using Terraform. The backend state is securely managed using Amazon S3 and DynamoDB state locking.

🔗 EcomTelemetry-App Repo: [EcomTelemetry-App](https://github.com/Preetbandgar/EcomTelemetry-App.git)

---

📌 Project Architecture

![Infrastructure Diagram](https://www.datocms-assets.com/2885/1620155841-eks-architecture.png)

```
Terraform-aws-eks/
│── backend/                  # Terraform backend configuration (S3 & DynamoDB)
│   ├── main.tf               # Backend setup script
│── eks/                      # EKS module
│   ├── main.tf               # EKS cluster definition
│   ├── variables.tf          # Input variables
│   └── outputs.tf            # Output variables
│── vpc/                      # VPC module
│   ├── main.tf               # VPC network configuration
│   ├── variables.tf          # Input variables
│   └── outputs.tf            # Output variables
│── main.tf                   # Root Terraform configuration
│── variables.tf              # Global variables
│── outputs.tf                # Global outputs
│── README.md                 # Project documentation
```

---

💡 Prerequisites

✅ Terraform v1.3+  
✅ AWS CLI configured with necessary IAM permissions  
✅ kubectl installed for interacting with EKS  

---

🏠 Terraform Backend Setup

Before deploying the infrastructure, set up the Terraform backend by executing `main.tf` in the `backend/` directory. This will create an S3 bucket and a DynamoDB table for state locking.

### Steps:

1️⃣ Navigate to the backend directory:
   ```sh
   cd backend/
   ```
2️⃣ Modify `main.tf` to specify your preferred AWS region and S3 bucket name.
3️⃣ Initialize and apply Terraform to create backend resources:
   ```sh
   terraform init
   terraform apply -auto-approve
   ```
4️⃣ Ensure the same S3 bucket name is used in the final `main.tf` when invoking the EKS and VPC modules.

---

🚀 Deployment Steps

1️⃣ Navigate to the root directory:
   ```sh
   cd ..
   ```
2️⃣ Initialize Terraform:
   ```sh
   terraform init
   ```
3️⃣ Validate the configuration:
   ```sh
   terraform validate
   ```
4️⃣ Plan the deployment:
   ```sh
   terraform plan
   ```
5️⃣ Apply the infrastructure:
   ```sh
   terraform apply -auto-approve
   ```

---

💪 Future Enhancements

✅ Implement IAM Roles for Service Accounts (IRSA)  
✅ Configure AWS ALB Ingress Controller  
✅ Integrate GitHub Actions for CI/CD  

---

🪜 Cleanup

To destroy the infrastructure, run:
```sh
terraform destroy -auto-approve
```

---

🤝 Contributing

💡 Feel free to fork the repository, create a feature branch, and submit a pull request!

---

🛑 Important Notes:

🔹 Execute `main.tf` in the `backend/` folder first to create the Terraform backend using S3 and DynamoDB.  
🔹 Ensure the same S3 bucket name is referenced in the final `main.tf` that invokes the EKS and VPC modules.  

---

👨‍💻 Credits

Special thanks to the OpenTelemetry contributors and team for their valuable documentation and resources used in this project.

Happy Coding! 🚀

