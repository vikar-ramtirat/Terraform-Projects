# Deploy a MySQL database

# Create a MySQL v5.7 database instance with 5GB of storage with a Gen 5, basic tier database SKU. Give it 5Gb of storage, set an admin password, and create a database.

1st Step Run cmd - terraform inti to initializes a working directory and downloads the necessary provider plugins and modules and setting up the backend for storing your infrastructure's state.

2nd step - Run terraform plan and review the output to confirm that Terraform will create the desired resource. Green plus signs will indicate the resources that need to be added.

3rd Step - Run terraform apply, answering yes to the prompt to continue to deploy db with configuration.