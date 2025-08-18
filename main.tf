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
  project_id   = data.tfe_project.project.id
  auto_apply   = true
}