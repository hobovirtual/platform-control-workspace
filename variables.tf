# team defined varaibles
variable "TEAM_WS_NAME" {
  type = string  
}

# terraform variable declaration - definitions can be found in HCP TF
variable "GH_APP_ID" {}
variable "GH_APP_INSTALLATION_ID" {}
variable "GH_ORGANIZATION" {}
variable "GH_PEM" {}
variable "TFE_ORG" {}
variable "TFE_PROJECT" {}
variable "TFE_TOKEN" {}
variable "VCS_OAUTH_TOKEN_ID" {}