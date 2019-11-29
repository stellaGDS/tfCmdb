provider "gds" {
  endpoint = "http://app-cmdb-server:3000/api/cmdb"
  version  = "0.0.1"
}

data "gds_cmdb_config_item" "ci1" {
  cmdb_id = "alicloud_ess_scaling_rule_FNQXjYkH"
}

output "ci1_project_id" {
  value = data.gds_cmdb_config_item.ci1.project_id
}
output "ci1_supplier" {
  value = data.gds_cmdb_config_item.ci1.supplier
}
