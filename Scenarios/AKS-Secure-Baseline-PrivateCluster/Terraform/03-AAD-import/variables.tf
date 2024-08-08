#############
# VARIABLES #
#############

variable "aks_admin_group" {
  default = "AKS App Admin Team"
}

variable "aks_user_group" {
  default = "AKS App Dev Team"
}

variable "arm_client_id" {}
variable "arm_client_secret" {}
variable "arm_tenant_id" {}
variable "arm_subscription_id" {}
