resource "github_team_membership" "reviewers" {
  count = length(var.reviewer_team_members)
  team_id = github_team.reviewers.id
  username = element(var.reviewer_team_members, count.index)
  role = "maintainer"
}