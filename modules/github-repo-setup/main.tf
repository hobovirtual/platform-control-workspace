# ---------------------------------------
# extract all teams names in a local var

locals {
  ALL_REPO_NAMES = [for obj in var.TEAMS : obj.REPO_NAME]
  ALL_REPO_DESCRIPTIONS = [for obj in var.TEAMS : obj.DESCRIPTION]
}

resource "github_repository" "team_repo" {
  count = length(var.ALL_REPO_NAMES)
  name = var.ALL_REPO_NAMES[count.index]
  description = var.ALL_REPO_DESCRIPTIONS[count.index]
  auto_init = true
  visibility = "public"
}