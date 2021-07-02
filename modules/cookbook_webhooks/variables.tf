variable "name" {
  type        = string
  description = "The name of the repository"
}
variable "hmac_secret" {
  type      = string
  sensitive = true
}

// We use an object for this to avoid ddos as the urls
// will not be public to most people this way.
variable "webhook_config" {
  type = object({
    changelog_reset_url                  = string
    changelog_validator_url              = string
    cookbook_release_creator_url         = string
    cookbook_supermarket_uploader_url    = string
    cookbook_release_validator_url       = string
    deployment_status_slack_notifier_url = string
    label_validator_url                  = string
  })
}
