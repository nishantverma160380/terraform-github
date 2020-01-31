resource "github_repository" "monitoring-app" {
  name = "monitoring-app"
  description = "Operate Happy's monitoring app"
  homepage_url = "https://operatehappy.com/monitoring-app"
  private = false
	 
  has_downloads = false
  has_issues = true
  has_projects = false
  has_wiki = false
	 
  allow_merge_commit = false
  allow_rebase_merge = false
  allow_squash_merge = true
	 
  auto_init = false

  template {
    owner = "operatehappy"
    repo = "terraform-module-template"
  }

  topics = [
    "application",
    "monitoring"
  ]
}