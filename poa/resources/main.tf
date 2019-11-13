resource "openstack_compute_instance_v2" "test" {
  security_groups = ["default","dashboard_access","inter_instance_comm","mongo_access","mw_access"]
}
