terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "0.68.2"
    }
  }
}

provider "tfe" {
  # Configuration options
}