# Create SSM Endpoint to connect Private EC2 without internet access
Using Terraform v0.13.7

## How to run
- Create a file name terraform.tfvars and provide the VPC_id, 3 Subnet_id and Security Group ID. (This modules with not create them, you have to create them before running this code).
- Update the `backend.tf` file to your S3 backend, or comment the `backend "s3"` session if you want to try it locally
- `terraform init`
- `terraform plan`
- `terraform apply`

## Destroy
- `terraform destroy` 

