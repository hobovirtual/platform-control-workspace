output "vcs_fullpath" {
#  value = github_repository.team_repo[*].full_name
  value = github_repository.team_repo.full_name
}