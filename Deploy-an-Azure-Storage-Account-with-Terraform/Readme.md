# Deploy an Azure Storage Account with Terraform

Set up a basic storage account with Terraform with the location, account tier, and replication type are already in place. 

1st Step Run cmd - terraform inti to initializes a working directory and downloads the necessary provider plugins and modules and setting up the backend for storing your infrastructure's state.

2nd step - Run terraform plan and review the output to confirm that Terraform will create the desired resource. Green plus signs will indicate the resources that need to be added.

3rd Step - Run terraform apply, answering yes to the prompt to continue to deploy Storage account with with the location, account tier, and replication type.