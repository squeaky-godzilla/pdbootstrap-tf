# config_pd - TF module

## Why?

PagerDuty setup for a new team can be tedious clickey manual job, so why not use TerraForm to make it snappy?

## How?

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

	- It's currently impossible to create the Slack integration, as Pagerduty API is unable to initiate the incoming Webhook creation in a non-hacky way, so that's not implemented yet.



