variable "location" {
  type = string
  description = "The Location for deployment"
  default = "uksouth"
}

variable "rsgname" {
    type = string
    description = "resource group name"
    default ="191-171c9aa8-deploy-a-web-application-with-terraform"
  
}