# Deploying an Azure VM with Terraform
Deploy a Virtual Machine. Set up a VNet/Subnet, a public IP address, network interface, boot diagnostic account, including the VM itself.

This code block sets up the:
VNet/Subnet
Public IP address
Network interface
Boot diagnostic account - Boot Diagnostics storage account to support the use of the serial console, providing a quick way to test the VM's deployment.
Virtual Machine -Ubuntu VM

1st Step Run cmd - terraform inti to initializes a working directory and downloads the necessary provider plugins and modules and setting up the backend for storing your infrastructure's state.

2nd step - Run terraform plan and review the output to confirm that Terraform will create the desired resource. Green plus signs will indicate the resources that need to be added.

3rd Step - Run terraform apply, answering yes to the prompt to continue to deploy VM with configuration and other required resources.