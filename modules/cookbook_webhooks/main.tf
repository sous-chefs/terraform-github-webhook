resource "github_repository_webhook" "label_validator" {
  repository = var.name

  configuration {
    url          = var.webhook_config.label_validator_url
    content_type = "form"
    insecure_ssl = false
    secret       = var.hmac_secret
  }
  active = true
  events = ["pull_request"]
}

resource "github_repository_webhook" "changelog_reset" {
  repository = var.name

  configuration {
    url          = var.webhook_config.changelog_reset_url
    content_type = "form"
    insecure_ssl = false
    secret       = var.hmac_secret
  }
  active = true
  events = ["release"]
}

resource "github_repository_webhook" "changelog_validator" {
  repository = var.name

  configuration {
    url          = var.webhook_config.changelog_validator_url
    content_type = "form"
    insecure_ssl = false
    secret       = var.hmac_secret
  }
  active = true
  events = ["pull_request"]
}

resource "github_repository_webhook" "cookbook_release_validator" {
  repository = var.name

  configuration {
    url          = var.webhook_config.cookbook_release_validator_url
    content_type = "form"
    insecure_ssl = false
    secret       = var.hmac_secret
  }
  active = true
  events = ["pull_request"]
}

resource "github_repository_webhook" "cookbook_release_creator" {
  repository = var.name

  configuration {
    url          = var.webhook_config.cookbook_release_creator_url
    content_type = "form"
    insecure_ssl = false
    secret       = var.hmac_secret
  }
  active = true
  events = ["pull_request"]
}

resource "github_repository_webhook" "cookbook_supermarket_uploader" {
  repository = var.name

  configuration {
    url          = var.webhook_config.cookbook_supermarket_uploader_url
    content_type = "form"
    insecure_ssl = false
    secret       = var.hmac_secret
  }
  active = true
  events = ["deployment"]
}

resource "github_repository_webhook" "deployment_status_slack_notifier" {
  repository = var.name

  configuration {
    url          = var.webhook_config.deployment_status_slack_notifier_url
    content_type = "form"
    insecure_ssl = false
    secret       = var.hmac_secret
  }
  active = true
  events = ["deployment_status"]
}
