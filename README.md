# terraform-github-webhook

Webhook management for the Sous-Chefs github org

## Usage

To configure webhooks on a repository make sure it is in the `terraform-github-repository` github repo
This repository reads the outputs from `terraform-github-repository` to determine the list of cookbooks, ide and terraform repositories

## Importing a Repo (Board only)

Note: **Board Members only**

import the state file using:
As per [documentation on repository webhooks](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_webhook#import) the number is the id of the webhook which can be found from the individual webhook page.

```bash
terraform import module.cookbook_webhooks[\"bot-trainer\"].github_repository_webhook.label_validator bot-trainer/305575727
```
