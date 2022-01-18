.PHONY: lint
lint:
	yamllint .
	ansible-playbook playbook.yml --syntax-check
	ansible-lint playbook.yml

.PHONY: run
run:
	ansible-playbook playbook.yml \
	   --vault-id archlinux-workstation@gopass-client.py \
	   --extra-vars "@vars/custom.yml"

