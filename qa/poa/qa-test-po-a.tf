resource "openstack_compute_instance_v2" "qa-test-po-a" {
	count = "1"
	name = "pr-qa-test-po-a-po-a-00${count.index + 1}"
	region = "PO-A"
	image_id = "9da95274-3b23-49b0-a341-fd72b5afd3a7"
	flavor_id = "3108"
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
		name = "Public_AGILE"
	}
}

resource "vinyldns_record_set" "qa-test-po-a_record_set_v4" {
	count = "1"
	name = "pr-qa-test-po-a-po-a-00${count.index + 1}"
	zone_id = "1bbdd4b5-1034-4578-8c19-8ed70ffe083c"
	type = "A"
	ttl = 300
	record_addresses = ["${element(openstack_compute_instance_v2.qa-test-po-a.*.access_ip_v4, count.index)}"]
}

resource "vinyldns_record_set" "qa-test-po-a_record_set_v6" {
	count = "1"
	name = "pr-qa-test-po-a-po-a-00${count.index + 1}"
	zone_id = "1bbdd4b5-1034-4578-8c19-8ed70ffe083c"
	type = "AAAA"
	ttl = 300
	record_addresses = ["${element(openstack_compute_instance_v2.qa-test-po-a.*.access_ip_v6, count.index)}"]
}

