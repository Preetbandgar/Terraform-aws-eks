# Terraform AWS EKS Infrastructure for EcomTelemetry-App

This repository provides the infrastructure setup for the **EcomTelemetry-App** project, an end-to-end OpenTelemetry demo eCommerce application. The infrastructure is built using **Terraform**, utilizing modules for **Amazon EKS (Elastic Kubernetes Service) and VPC (Virtual Private Cloud)**. The Terraform backend state is managed using **Amazon S3** with state locking enabled via **DynamoDB**.

**EcomTelemetry-App Project Repository:** [EcomTelemetry-App-App](https://github.com/Preetbandgar/EcomTelemetry-App-App.git)

## Project Architecture

```
Terraform-aws-eks/
│── backend/                  # Terraform backend configuration (S3 & DynamoDB)
│   ├── main.tf               # Backend setup script
│── eks/                      # EKS module
│   ├── main.tf               # EKS cluster definition
│   ├── variables.tf          # Input variables
│   ├── outputs.tf            # Output variables
│── vpc/                      # VPC module
│   ├── main.tf               # VPC network configuration
│   ├── variables.tf          # Input variables
│   ├── outputs.tf            # Output variables
│── main.tf                   # Root Terraform configuration
│── variables.tf              # Global variables
│── outputs.tf                # Global outputs
│── README.md                 # Project documentation
```

## Prerequisites

- **Terraform** v1.3+
- **AWS CLI** configured with necessary IAM permissions
- **kubectl** installed for interacting with EKS

## Terraform Backend Setup

Before applying the infrastructure, you need to **create the backend for state management** by executing `main.tf` in the `backend/` directory. 

1. **Navigate to the backend directory**:
   ```sh
   cd backend/
   ```
2. **Modify `main.tf`** to specify your preferred AWS region and S3 bucket name.
3. **Initialize and apply Terraform** to create the backend resources:
   ```sh
   terraform init
   terraform apply -auto-approve
   ```
4. **Ensure that the same S3 bucket name** used in the backend `main.tf` is referenced in the final `main.tf` used to invoke the EKS and VPC modules.

## Deployment Steps

1. **Navigate to the root directory**:
   ```sh
   cd ..
   ```
2. **Initialize Terraform**:
   ```sh
   terraform init
   ```
3. **Validate the configuration**:
   ```sh
   terraform validate
   ```
4. **Plan the deployment**:
   ```sh
   terraform plan
   ```
5. **Apply the infrastructure**:
   ```sh
   terraform apply -auto-approve
   ```

## OpenTelemetry Integration

Once the infrastructure is up, you can deploy OpenTelemetry components to monitor the eCommerce application. Key steps include:
- Deploying OpenTelemetry Collector on EKS
- Configuring traces, metrics, and logs export to monitoring solutions
- Integrating with Prometheus, Jaeger, or Grafana for observability

## Future Enhancements
- Implement **IAM Roles for Service Accounts (IRSA)**
- Configure **AWS ALB Ingress Controller**
- Integrate **GitHub Actions for CI/CD pipeline**

## Cleanup
To destroy the infrastructure, run:
```sh
terraform destroy -auto-approve
```

## Contributing
Feel free to fork the repository, create a feature branch, and submit a pull request!

## License
This project is licensed under the MIT License.

---
### Note:
- You must first **execute `main.tf` in the `backend/` folder** to create the Terraform backend using S3 and DynamoDB.
- Ensure the **same S3 bucket name** is referenced in the final `main.tf` that invokes the **EKS and VPC modules**.
