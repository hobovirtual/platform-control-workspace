# ======================================
# workspace creation
# ======================================

# --------------------------------------
# HCP TF - create/manage project

data "tfe_project" "project" {
  count = length(var.TEAMS)
  name = lookup(var.TEAMS[count.index], "NAME")
  organization = var.TFE_ORG
}