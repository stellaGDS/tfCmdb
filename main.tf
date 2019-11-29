provider "cmdb" {
  endpoint = "http://dev.gds.cloud/api/cmdb"
  version  = "0.0.1"
}

data "cmdb_config_item" "ci1" {
  cmdb_id = "alicloud_ess_scaling_rule_FNQXjYkH"
}

output "ci1_project_id" {
  value = data.cmdb_config_item.ci1.project_id
}
output "ci1_supplier" {
  value = data.cmdb_config_item.ci1.supplier
}
