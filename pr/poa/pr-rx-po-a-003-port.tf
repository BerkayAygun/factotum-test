resource "openstack_networking_port_v2" "pr-rx-po-a-003_port" {
	count = "1"
	name = "pr-rx-po-a-003"
	network_id = "5762b250-6836-4412-9221-ab2f0fb0dce5"
	admin_state_up = "true"
}

