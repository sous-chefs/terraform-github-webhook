# variable "repository" {
#   type = list(object({
#     name                      = string
#     repo_type                 = string
#     supermarket_name_override = optional(string)
#     description_override      = optional(string)
#     homepage_url_override     = optional(string)
#     additional_topics         = optional(list(string)),
#     additional_status_checks  = optional(list(string))
#     projects_enabled          = optional(bool)
#   }))
#   description = "The repositories to create."
# }


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
