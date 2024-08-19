# homelab-ansible
## (part of) my homelab in ansible form!

This repo contains my efforts to learn IaC with Ansible

### Command snippets

Ping production hosts:
`ansible all -m ping -i production-inventory`

Run on staging playbook:
` ansible-playbook -i staging-inventory site.yml`

Run on production playbook:
`ansible-playbook -i production-inventory site.yml`

Run on production playbook, but skip all except specified host:
`ansible-playbook -i production-inventory site.yml --limit "pve"`