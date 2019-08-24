# config_pd - TF module

## Why?

Pagerduty (PD) services created by pdboot are missing the sre-alert Slack channel extension, which seems to be an agreed good practice for the HEL SRE team.
To reduce complexity, the idea is to integrate the pdboot functionality into a Terraform (TF) module, since TF is our tool of choice for resources provisioning.


## How?

Implementation into the framework is yet undecided, however it makes sense to keep the PD settings config with other configs in the service git repo.
Until the module is functional, the testing will be probably carried out running the scripts locally, since the module is reaching only to the PD provider and doesn't create any actual infrastructure resources.

Used variables:

```
variable "pagerduty_token" {}
variable "team_name" {}
variable "escalation_policy" {}
variable "service_name" {}
variable "schedule_name" {}
variable "business_unit" {}
variable "users" {
  type = "list"
}
variable "env" {}
variable "prefix" {}
```


## Problems

	- This is my first TF whatever so I expect some problems
	- It's currently impossible to create the Slack integration, as Pagerduty API is unable to initiate the incoming Webhook creation in a non-hacky way, so that's not implemented yet.



