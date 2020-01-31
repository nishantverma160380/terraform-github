resource "github_branch_protection" "monitoring-app" {
  repository     = github_repository.monitoring-app.name
  branch         = "master"
  enforce_admins = true

  require_signed_commits = true

  required_status_checks {
    strict   = true
    contexts = ["ci/enforcer"]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews = true
    dismissal_teams       = [github_team.reviewers.slug]
  }

  restrictions {
    teams = [github_team.reviewers.slug]
  }
}