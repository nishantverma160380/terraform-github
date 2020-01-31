resource "github_team" "reviewers" {
  name = "reviewers"
  description = "Reviewer Team"
  privacy = "closed"
}