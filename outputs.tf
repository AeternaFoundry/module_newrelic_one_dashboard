output "one_dashboards_id" {
  description = "Map of id values across all one_dashboards, keyed the same as var.one_dashboards"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.id }
}
output "one_dashboards_account_id" {
  description = "Map of account_id values across all one_dashboards, keyed the same as var.one_dashboards"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.account_id }
}
output "one_dashboards_description" {
  description = "Map of description values across all one_dashboards, keyed the same as var.one_dashboards"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.description }
}
output "one_dashboards_guid" {
  description = "Map of guid values across all one_dashboards, keyed the same as var.one_dashboards"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.guid }
}
output "one_dashboards_name" {
  description = "Map of name values across all one_dashboards, keyed the same as var.one_dashboards"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.name }
}
output "one_dashboards_page" {
  description = "Map of page values across all one_dashboards, keyed the same as var.one_dashboards"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.page }
}
output "one_dashboards_permalink" {
  description = "Map of permalink values across all one_dashboards, keyed the same as var.one_dashboards"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.permalink }
}
output "one_dashboards_permissions" {
  description = "Map of permissions values across all one_dashboards, keyed the same as var.one_dashboards"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.permissions }
}
output "one_dashboards_variable" {
  description = "Map of variable values across all one_dashboards, keyed the same as var.one_dashboards"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.variable }
}

