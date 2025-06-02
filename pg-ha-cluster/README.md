# Ansible for Postgres HA Cluster

## How to run
1. edit inventory folder hosts
2. export configuration path
```bash
export ANSIBLE_CONFIG=$(pwd)/ansible.cfg
```
3. verify hosts connection working
```bash
ansible -i pg-ha-cluster/inventory/hosts.ini primary -m ping -u=username --private-key=~/.ssh/your_key
```
1. finally, run each playbook you want
```bash
ansible-playbook -i pg-ha-cluster/inventory/hosts.ini -u=username --private-key=~/.ssh/your_key pg-ha-cluster/playbooks/configure_primary.yml
```