data "terraform_remote_state" "terraform_github_repository" {
  backend = "remote"

  config = {
    organization = "sous-chefs"
    workspaces = {
      name = "terraform-github-repository"
    }
  }
}

locals {
  cookbook_repositories  = data.terraform_remote_state.terraform_github_repository.outputs.cookbooks
  ide_repositories       = data.terraform_remote_state.terraform_github_repository.outputs.ide
  terraform_repositories = data.terraform_remote_state.terraform_github_repository.outputs.terraform
}

module "cookbook_webhooks" {
  for_each       = toset(local.cookbook_repositories)
  source         = "./modules/cookbook_webhooks"
  name           = each.value
  hmac_secret    = var.hmac_secret
  webhook_config = var.webhook_config
}

