resource "github_repository" "team_repo" {
  name        = "example"
  description = "My awesome codebase"
  auto_init = true
  visibility = "public"
}