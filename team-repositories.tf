resource "github_team_repository" "monitoring-app" {
  team_id = github_team.reviewers.id
  repository = github_repository.monitoring-app.name
  permission = "push"
}