# Create SSM Endpoint to connect Private EC2 without internet access
Using Terraform v0.13.7

## VPC-endpoint modules
- Can be downloaded here: https://github.com/terraform-aws-modules/terraform-aws-vpc/tree/master/modules/vpc-endpoints

## How to run
- Create a file name terraform.tfvars and provide the VPC_id, 3 Subnet_id and Security Group ID. (This modules with not create them, you have to create them before running this code).
- Update the `backend.tf` file to your S3 backend, or comment the `backend "s3"` session if you want to try it locally
- `terraform init`
- `terraform plan`
- `terraform apply`

## Destroy
- `terraform destroy` 

## Notes:
- `Security Group` must **allow Inbound HTTPS Port 443** from Source VPC_CIDR.

## References
- Links: https://aws.amazon.com/premiumsupport/knowledge-center/ec2-systems-manager-vpc-endpoints/
