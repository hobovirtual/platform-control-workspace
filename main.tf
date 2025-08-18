# ======================================
# workspace creation
# ======================================

# --------------------------------------
# HCP TF declaration

data "tfe_project" "project" {
  name         = var.TFE_PROJECT
  organization = var.TFE_ORG
}

# --------------------------------------
# HCP TF declaration

resource "tfe_workspace" "team-control-ws" {
  name         = var.TEAM_WS_NAME
  organization = var.TFE_ORG
  project_id   = data.tfe_project.platform.id
  auto_apply   = true
  vcs_repo {
    branch         = "main"
    identifier     = module.git_repo_setup.vcs_team_path
  }
}

# --------------------------------------
# module creating git repo

module "git_repo_setup" {
  source = "./modules/github-repo-setup"
}