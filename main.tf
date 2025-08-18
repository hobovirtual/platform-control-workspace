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

resource "tfe_workspace" "team-control-ws" {
  name         = var.TEAM_WS_NAME
  organization = var.TFE_ORG
  project_id   = data.tfe_project.project.id
  auto_apply   = true
}