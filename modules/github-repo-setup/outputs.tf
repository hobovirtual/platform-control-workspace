output "vcs_path" {
  value = github_repository.team_repo[*].full_name
}