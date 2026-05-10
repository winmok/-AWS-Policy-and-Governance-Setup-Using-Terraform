           '#'   AWS Policy and Governance 
This project demonstrates how to implement AWS Policy Creation and Governance Setup using Terraform. It showcases best practices for cloud security, compliance monitoring, and automated policy enforcement.

          '##'    Project Objectives
1. Policy Creation: Implement IAM policies to enforce security best practices
2. Governance Setup: Configure AWS Config for continuous compliance monitoring
3. Resource Tagging: Demonstrate tagging strategies for resource management
4. S3 Security: Apply encryption, versioning, and access controls
5. Compliance Monitoring: Track configuration changes and detect violations

           '##'    Project Structure
project/      
├── provider.tf       # AWS provider configuration
├── variables.tf      # Input variables
├── main.tf          # S3 bucket and shared resources
├── iam.tf           # IAM policies and roles
├── config.tf        # AWS Config recorder and rules
├── outputs.tf       # Output values
└── README.md        # This file




    '#'  IAM Policies Created
1. MFA Delete Policy
Denies S3 object deletion unless Multi-Factor Authentication is present.

2. S3 Encryption in Transit Policy
Requires HTTPS/TLS for all S3 operations.

3. Required Tags Policy
Enforces tagging standards for EC2 instances and other resources.

4. Demo IAM User
Sample user with attached policies for demonstration purposes.

     '##'   🛡️ AWS Config Rules
This project configures those compliance rules:

1.S3 Public Write Prohibited - Prevents public write access to S3 buckets
2.S3 Encryption Enabled - Ensures server-side encryption on S3 buckets
3.S3 Public Read Prohibited - Blocks public read access to S3 buckets
4.EBS Volumes Encrypted - Verifies all EBS volumes are encrypted
5.Required Tags - Checks for Environment and Owner tags
6.IAM Password Policy - Enforces strong password requirements
7.Root MFA Enabled - Ensures root account has MFA configured
     '##'   🚀 Usage
Prerequisites
AWS CLI configured with appropriate credentials
Terraform >= 1.0
AWS account with permissions to create IAM roles, policies, Config, and S3 resources
      ## How to Run
```bash
terraform init
terraform plan
terraform apply

