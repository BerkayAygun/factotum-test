resource "openstack_networking_port_v2" "pr-icfg-ho-a-001_port" {
	count = "1"
	name = "pr-icfg-ho-a-001"
	network_id = "89093c7c-a78d-49b4-8daa-331f4a6f8398"
	admin_state_up = "true"
}

