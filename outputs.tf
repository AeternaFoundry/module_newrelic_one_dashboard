output "one_dashboards_id" {
  description = "Map of id values across all one_dashboards, keyed the same as var.one_dashboards except keys with no id are omitted"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.id if v.id != null && length(v.id) > 0 }
}
output "one_dashboards_account_id" {
  description = "Map of account_id values across all one_dashboards, keyed the same as var.one_dashboards except keys with no account_id are omitted"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.account_id if v.account_id != null }
}
output "one_dashboards_description" {
  description = "Map of description values across all one_dashboards, keyed the same as var.one_dashboards except keys with no description are omitted"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.description if v.description != null && length(v.description) > 0 }
}
output "one_dashboards_guid" {
  description = "Map of guid values across all one_dashboards, keyed the same as var.one_dashboards except keys with no guid are omitted"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.guid if v.guid != null && length(v.guid) > 0 }
}
output "one_dashboards_name" {
  description = "Map of name values across all one_dashboards, keyed the same as var.one_dashboards except keys with no name are omitted"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.name if v.name != null && length(v.name) > 0 }
}
output "one_dashboards_page" {
  description = "Map of page values across all one_dashboards, keyed the same as var.one_dashboards except keys with no page are omitted"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.page if v.page != null && length(v.page) > 0 }
}
output "one_dashboards_permalink" {
  description = "Map of permalink values across all one_dashboards, keyed the same as var.one_dashboards except keys with no permalink are omitted"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.permalink if v.permalink != null && length(v.permalink) > 0 }
}
output "one_dashboards_permissions" {
  description = "Map of permissions values across all one_dashboards, keyed the same as var.one_dashboards except keys with no permissions are omitted"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "one_dashboards_variable" {
  description = "Map of variable values across all one_dashboards, keyed the same as var.one_dashboards except keys with no variable are omitted"
  value       = { for k, v in newrelic_one_dashboard.one_dashboards : k => v.variable if v.variable != null && length(v.variable) > 0 }
}

