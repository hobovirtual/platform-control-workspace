terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.6.0"
    }
  }
}

provider "github" {
  owner = var.GH_ORGANIZATION
  app_auth {
    id              = var.GH_APP_ID
    installation_id = var.GH_APP_INSTALLATION_ID
  }
}