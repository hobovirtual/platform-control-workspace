# ======================================
# workspace creation
# ======================================

# --------------------------------------
# HCP TF - create/manage project

data "tfe_project" "project" {
  count = length(var.TEAMS)
  name = lookup(var.TEAMS[count.index], "WS_NAME")
  organization = var.TFE_ORG
}