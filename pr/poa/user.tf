data "template_file" "user_add" {
	template = "${file("./user_add.yml")}"

	vars {
		user_id ="baygun001c"
		ssh_key = "\"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDkd5xSQU932uIlise6ttp58v8Qf/StGNFuN59zDlvDRn6vlg2C2wx+7rC/wS0IpKFrEBp7n8T57e8lccuBWFWM2mltPPZcnUflV001CZSH1Xiq2KzM0ZJmrjwVddSkfqs12tIPPJUjL3Y50oO41b0MJdr1JExhpgZMYOGwJh0313PWZ76fnEU9FArbV039u4xfSgtK3w32aC9dfnuhyCdpUYrMQN1i9Nf/C38DG26mxinD6WwXpKpUvlMlj932UflZD3ZR+QzOyjZKilk39IfWUX2LI5ikutgAF+5vqBaUy6xzAYlS/j5Sh5lwZmejgzKlXKm2fE5HxE7NnPEaVpCZ baygun001c@megadocker-ch2-d26p.sys.comcast.net\""
	}
}
