# remove the `monitoring-app` resource from Terraform's State
terraform state rm github_repository.monitoring-app

# import the `monitoring-app` resource into Terraform's State
terraform import github_repository.monitoring-app monitoring-app