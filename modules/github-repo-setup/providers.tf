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
  app_auth {}
}