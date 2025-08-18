# ======================================
# workspace creation
# ======================================

# --------------------------------------
# HCP TF - select project

data "tfe_project" "project" {
  name         = var.TFE_PROJECT
  organization = var.TFE_ORG
}

# --------------------------------------
# HCP TF - create workspace

resource "tfe_workspace" "team-ws" {
  for_each = {for TEAM in var.TEAMS}
  name = each.value.WS_NAME
  organization = var.TFE_ORG
  project_id = data.tfe_project.project.id
  auto_apply = true
  vcs_repo {    
    branch = "main"
    identifier = module.vcs_setup.vcs_path
    oauth_token_id = var.VCS_OAUTH_TOKEN_ID
  }
}

# ***************************************
# TF Modules declaration

module "vcs_setup" {
  source = "./modules/github-repo-setup"
  GH_APP_ID = var.GH_APP_ID
  GH_APP_INSTALLATION_ID = var.GH_APP_INSTALLATION_ID
  GH_ORGANIZATION = var.GH_ORGANIZATION
  GH_PEM = var.GH_PEM
}