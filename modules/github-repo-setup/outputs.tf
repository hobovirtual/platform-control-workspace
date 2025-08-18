output "vcs_path" {
  value = values(github_repository.team_repo.map)[*].full_name
}