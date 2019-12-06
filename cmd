ansible-playbook -i hosts configureCloudInstance.yml  --extra-vars="hostGrp=cfgagents" --tags "cfgagent"
ansible-playbook -i inventories/hosts configureCloudInstance.yml  --extra-vars="hostGrp=cfgagents" --tags "cfgagent"
inv = self.secrets.getHostFilePath()        ansible/inventories/hosts
user = self.secrets.user
tag = self.secrets.getTag(action)           {self.env}-{action}-{self.dc} pr-test-po-a
playbook = self.secrets.getPlaybook(action) ansible/playbooks/{action}.yml

ansible-playbook -i {inv} -u {user} --key-file={controllerKey} -t {tag} {playbook}
ansible-playbook -i ansible/inventories/hosts -u centos --key-file=/ansible/keys/pcmm-production.key -t pr-test-po-a  ansible/playbooks/test.yml
{playbook}
