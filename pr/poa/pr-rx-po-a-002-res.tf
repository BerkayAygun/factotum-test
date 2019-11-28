resource "openstack_compute_instance_v2" "pr-rx-po-a-002" {
	count = "1"
	name = "pr-rx-po-a-002"
	region = "PO-A"
	image_id = "9da95274-3b23-49b0-a341-fd72b5afd3a7"
	flavor_id = "3116"
	key_pair = "pcmm-production"
	security_groups = ["default","dashboard_access","inter_instance_comm","mongo_access","mw_access"]

	lifecycle {
		ignore_changes = ["user_data"]
	}
	user_data  = "${element(data.template_file.user_add.*.rendered, count.index)}"

	metadata {
		this = "that"
	}

	network {
		port = "${element(openstack_networking_port_v2.pr-rx-po-a-002_port.*.id, count.index)}"
		access_network = true
	}
}

resource "vinyldns_record_set" "pr-rx-po-a-002_record_set_v4" {
	count = "1"
	name = "pr-rx-po-a-002"
	zone_id = "1bbdd4b5-1034-4578-8c19-8ed70ffe083c"
	type = "A"
	ttl = 300
	record_addresses = ["${element(openstack_compute_instance_v2.pr-rx-po-a-002.*.access_ip_v4, count.index)}"]
}

resource "vinyldns_record_set" "pr-rx-po-a-002_record_set_v6" {
	count = "1"
	name = "pr-rx-po-a-002"
	zone_id = "1bbdd4b5-1034-4578-8c19-8ed70ffe083c"
	type = "AAAA"
	ttl = 300
	record_addresses = ["${element(openstack_compute_instance_v2.pr-rx-po-a-002.*.access_ip_v6, count.index)}"]
}

