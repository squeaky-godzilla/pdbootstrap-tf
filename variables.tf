variable "pagerduty_token" {
  default = "sometoken"
}

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
 
