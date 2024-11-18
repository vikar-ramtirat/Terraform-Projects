variable "location" {
  type = string
  description = "The location for the deployment"
  default = "uksouth"
}

variable "rsgname" {
    type = string
    description = "resource group name"
    default = "185-05fb25ce-create-azure-nsgs-with-terraform"
  
}