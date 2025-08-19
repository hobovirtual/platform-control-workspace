# ---------------------------------------
# extract all teams names in a local var

# locals {
#   ALL_REPO_NAMES = [for obj in var.TEAMS : obj.REPO_NAME]
#   ALL_REPO_DESCRIPTIONS = [for obj in var.TEAMS : obj.DESCRIPTION]
# }

resource "github_repository" "team_repo" {
  #count = length(local.ALL_REPO_NAMES)
  #name = local.ALL_REPO_NAMES[count.index]
  #description = local.ALL_REPO_DESCRIPTIONS[count.index]
  name = var.REPO_NAME
  description = var.REPO_DESCRIPTION
  auto_init = true
  visibility = "public"
}