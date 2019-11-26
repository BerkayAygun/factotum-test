provider "vinyldns" {
	host = "https://api.vinyldns.comcast.net:9443"
}
provider "openstack" {
	tenant_name = "555-PCMMNG"
	domain_name = "comcast"
	auth_url = "https://osdash-po-a01.ece.comcast.net:5000/v3/"
	version = "1.16.0"
}
